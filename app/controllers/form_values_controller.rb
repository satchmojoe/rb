class FormValuesController < ApplicationController
  def index
    render json: FormValuesTable.get_all_values(params['form_id'])
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
end
