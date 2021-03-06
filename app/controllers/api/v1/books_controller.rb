class Api::V1::BooksController < ApplicationController
    def index 
        @books = Book.all
        render json: @books 
    end 

    def show
        render json: @book 
    end 

    def create
        @book = Book.new(book_params)
        if @book.save
          render json: @book
        else
          render json: {message: @book.errors }, status: 400
        end
      end

    
    def destroy
        @book.destroy 
    end 

    def update
        @book.update(book_params)
          render json: @book 
    #    else 
    #     render json: @book.errors, status :unprocessable
    #    end 
    end 

    def destroy
        @book.destroy 
    end 

    private 

    def set_book
       @book = Book.find(params[:id]) 
    end 

    def book_params 
        params.require(:book).permit(:title, :author, :genre, :stars, :review)
    end 



end
