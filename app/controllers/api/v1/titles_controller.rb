class TitlesController < ApplicationController
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

   def title_params
     params.require(:title).permit(:name, :author_id, :genre_id) 
   end 

end
