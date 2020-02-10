class Book < ApplicationRecord


    validates :title, presence: true, uniqueness: true   
    validates :author, presence: true
    validates :genre, presence: true  
    # validate :not_a_duplicate 

    validates :review, length: {maximum: 250} 
    validates :stars, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}

    scope :order_by_rating, -> {left_joins(:reviews).group(:id).order('avg(stars) desc')}


    # def not_a_duplicate
    #     # if there is already a book with this title and author  
    #     book = Book.find_by(title: title, author: author)  
    #     if !!book && book != self
    #       errors.add(:name, 'has already been added for that address')
    #     end
    # end 
end
