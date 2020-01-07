class AuthorsController < ApplicationController
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
 
    def author_params
        params.require(:author).permit(:name, :title_id)
    end  
end
