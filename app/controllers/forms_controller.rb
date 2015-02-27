class FormsController < ApplicationController
  def index
    render json: {forms: Form.all.map{|f| f.json_view} }
  end

  def show
    render json: {form: Form.find(params[:id]).json_view}
  end

  def create
  end

  def update
  end

  def delete
  end

  def submit
    Form.create_from_submission params[:form].to_hash
  end
end
