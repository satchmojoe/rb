class FormValuesController < ApplicationController
  before_filter :authorize_user

  # get all entries and search by column
  def index
    filters = split_out_filters
    render json: FormValuesTable.get_all_values(params['form_id'], filters)
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
  end

  def split_out_filters
    # just use get params
    return request.GET.collect{|key,value| {col: key, val: value}}

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
