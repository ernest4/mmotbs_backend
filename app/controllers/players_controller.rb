# frozen_string_literal: true

class PlayersController < ApplicationController
  # before_action :set_player, :only => %i[show update destroy]
  # before_action :authenticate!

  # GET /players
  def index
    players = Player.all

    # render :json => players
    render :json => PlayerSerializer.new(players, { :params => { :testy => 123 } }).serialized_json
  end

  # GET /players/1
  def show
    render :json => current_player
  end

  # POST /players
  def create
    player = Player.new(player_params)

    if player.save
      render :json => player, :status => :created, :location => player
    else
      render :json => player.errors, :status => :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  def update
    if current_player.update(player_params)
      render :json => current_player
    else
      render :json => current_player.errors, :status => :unprocessable_entity
    end
  end

  # DELETE /players/1
  def destroy
    current_player.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_player
  #   @player = Player.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:name, :password, :password_confirmation, :email)
  end
end
