# frozen_string_literal: true

# This module handles some common exceptions during requests
module Secured
  extend ActiveSupport::Concern

  included do
    def current_player
      @current_player ||= Player.find(session[:player_id])
    end

    def authenticate!
      raise Unauthorized unless current_player
    end
  end
end
