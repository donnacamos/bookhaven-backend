class ReviewsController < ApplicationController
    before_action :set_book 

    def index
      @reviews = Review.all 
      render json: @reviews 
    end
  
    def show
      @reviews = Review.find(params[:id])
      render json: @review 
    end
  
    def create
      @review = @book.reviews.new(review_params)
  
      if @review.save
        render json: @account
      else
        render json: {error: 'error creating review'} 
      end
    end
  
    def destroy
        @review = Review.find(params[:id])
        @review.destroy  
    end 

    def update
        @review = Review.find(params[:id])
        @review.update(content: params["review"]["content"])
        @review.save 
        render json: @review  
    end 
  
    private
  
    def set_book
      @book = Book.find(params[:book_id])
    end
  
  
    def review_params
      params.require(:review).permit(:content, :rating, :book_id)
    end
end
