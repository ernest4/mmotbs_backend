# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::Cookies
  include ActionController::RequestForgeryProtection
  include Response
  include ExceptionHandler
  include Secured

  protect_from_forgery :with => :exception
end
