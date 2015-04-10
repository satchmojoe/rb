class FormValuesController < ApplicationController
  before_filter :authorize_user

  # get all entries and search by column
  def index
    filters = split_out_filters

    res =  FormValuesTable.get_all_values(params['form_id'], filters)

    if params.has_key? 'group_by'
      res['data'] = res['data'].group_by{|e| e[params['group_by']]}
    end
    render json: res
  end

  def show
    render json: FormValuesTable.get_single_entry_values(params['form_id'], params['entry_id'])
  end

  def create
    render json: {result: FormValuesTable.insert_new_form_entry(params['form_id'], JSON.parse(request.body.read))}
  end

  def update
    FormValuesTable.update_form_entry(params['form_id'], params['entry_id'], JSON.parse(request.body.read).map{|k,v| JSON.parse({name: k, value: v}.to_json) })
    render json: FormValuesTable.get_single_entry_values(params['form_id'], params['entry_id'])
  end

  def delete
    render json: FormValuesTable.delete_form_entry(params['form_id'], params['entry_id'])
  end

  def count_with_matching_filters
    filters = split_out_filters
    render json: FormValuesTable.count_with_matching_filters(params['form_id'], filters)
  end

  def split_out_filters
    # just use get params
    return request.GET.collect{|key,value| {col: key, val: value}}.delete_if{|e| e[:col] == "group_by"}

    # prob can deprecate
    filters = []
    begin
      URI::parse(request.url).query.split("&").each{|e| filters.push( {col: e.split('=')[0], val: e.split('=')[1]})  }
    rescue Exception => e
      Rails.logger.error e.message
      Rails.logger.error e.backtrace
    end
    Rails.logger.debug "Filters are : " + filters.to_s
    filters
  end
end
