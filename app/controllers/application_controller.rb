class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception

  def authorize_user
    if Rails.env != 'development' &&  request.headers.env["HTTP_USER_ID"] != "dfasdfasdf234234wfdgsadfas345234dasfsdfdsf"
      render json: {error: "not authorized"}
    end
  end
end
