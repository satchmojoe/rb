class FormValuesController < ApplicationController
  before_filter :authorize_user

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
  end

  def delete
  end

  def split_out_filters
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
