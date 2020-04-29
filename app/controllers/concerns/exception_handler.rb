# frozen_string_literal: true

# This module handles some common exceptions during requests
module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      render :json => { :message => e.message }, :status => :not_found
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      render :json => { :message => e.message }, :status => :unprocessable_entity
    end

    rescue_from Unauthorized do |e|
      render :json => { :message => e.message }, :status => :unauthorized
    end
  end
end

# provide exception for editing resources that don't belog to current user
class Unauthorized < StandardError; end
