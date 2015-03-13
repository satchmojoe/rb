class FormsController < ApplicationController
  before_filter :authorize_user

  def index
    render json: {forms: Form.all.map{|f| f.json_view} }
  end

  def show
    render json: {form: Form.find(params[:id]).json_view}
  end

  def create
    render json: {response: Form.create_from_submission(params[:form].to_hash)}
  end

  def update
    render json: {response: Form.update_from_submission(params[:form].to_hash)}
  end

  def delete
  end

end
