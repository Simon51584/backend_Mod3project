class GamesController < ApplicationController
    def index
        @game = Game.all
        options = {
            include:[:player]
        }
        render json: @game.to_json(
            include:{
                player:{
                    only:%i[id name]
                }
            }
        )
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def create
        new_game = Game.create(new_game_params)

        render json: new_game
    end

    def update
        game = Game.find(params[:id])
        game.update(new_game_params)
        render json: game
    end

    def destroy
        game = Game.find(params[:id])

        begin
            game.destroy
            render json: { message: 'success' }
        rescue
            render  json: {error: 'unable to delete'}
        end
    
    end

    private

    def new_game_params
        params.permit(:player_id, :score)
    end

end
