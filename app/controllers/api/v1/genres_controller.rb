class GenresController < ApplicationController
    def index 

    end 
 
    def create
 
    end 
 
    def show 
 
    end 
 
    def update 
 
    end 
 
    def destroy 
 
    end 
 
    private 
 
    def genre_params
        params.require(:genre).permit(:namme, :title_id)
    end 
end
