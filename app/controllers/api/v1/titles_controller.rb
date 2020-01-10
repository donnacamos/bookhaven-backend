class TitlesController < ApplicationController
   def index 
        @titles = Title.all
        render :json @titles 
   end 

   def create
        @title = Title.new(title_params)
        if @title.save
            render json: @title
        else
            render json: {error: 'Error creating title'}
        end 
   end 

   def show 
        title = Title.find(params[:id]) 
        render json: @title 
   end 

   def update 

   end 

   def destroy 
        @title = Title.find(params[:id])
        @title.destroy 
   end 

   private 

   def title_params
     params.require(:title).permit(:name, :author_id, :genre_id) 
   end 

end
