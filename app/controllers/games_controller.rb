class GamesController < ApplicationController
    respond_to :html, :json

    def index
        @games = Game.includes(:gamings, :teams)
        respond_to do |format|
            format.html
            format.json { render json: @games }
        end
    end
end
