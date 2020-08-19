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
        
    end

    def update
        
    end

    def destroy
    
    end

end
