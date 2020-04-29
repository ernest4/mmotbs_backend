# frozen_string_literal: true

class SessionController < ApplicationController
  before_action :set_player, :only => %i[create destroy]

  # GET /session
  # this simply returns an empty response so that will have headers["CSRF-TOKEN"] set
  def csrf_token; end

  # POST /session
  def create
    raise Unauthorized unless @player

    session[:player_id] = @player.id

    render :json => PlayerSerializer.new(@player).serialized_json, :status => :created
  end

  # DELETE /session
  def destroy
    reset_session

    render :json => { :data => "Session reset" }
  end

  private

  def set_player
    @player = Player.find_by(:name => params[:name]).authenticate(params[:password])
  end

  # Only allow a trusted parameter "white list" through.
  # def player_params
  #   params.require(:player).permit(:name)
  # end
end
