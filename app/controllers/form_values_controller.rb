class FormValuesController < ApplicationController
  def index
  end

  def show
  end

  def create
    render json: {result: FormValuesTable.insert_new_form_entry(params['form_id'], params['form_value'])}
  end

  def update
  end

  def delete
  end
end
