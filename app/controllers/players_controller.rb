class PlayersController < ApplicationController
    def show
        player = Player.find(params[:id])
        render json: player
    end

    def create
        new_player = Player.create(new_player_params)
        
        render json: new_player
    end

    def update
        player = Player.find(params[:id])
        
        render json: player
        
    end

    def destroy
    
    end

    private

    def new_player_params
        params.permit(:name)
    end


end
