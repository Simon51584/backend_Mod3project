class PlayersController < ApplicationController
    def index
        players = Player.all

        render json: players 
    end

    
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
        player.update(new_player_params)
        render json: player
        
    end

    def destroy
        player = Player.find(params[:id])

        begin
            player.destroy
            render json: { message: 'success' }
        rescue
            render  json: {error: 'unable to delete'}
        end
    
    end

    private

    def new_player_params
        params.permit(:name)
    end


end
