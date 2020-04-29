# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :set_csrf_header

  include ActionController::Cookies
  include ActionController::RequestForgeryProtection
  include Response
  include ExceptionHandler
  include Secured

  protect_from_forgery :with => :exception

  private

  def set_csrf_header
    # This token is returned on every response so that the web app can use it the next request as
    # 'X-CSRF-Token' header. Rails will look for 'X-CSRF-Token' header in incoming requests and will
    # automatically check it against the previously generated 'CSRF-TOKEN' token to ensure a match.
    headers["CSRF-TOKEN"] = form_authenticity_token
  end
end
