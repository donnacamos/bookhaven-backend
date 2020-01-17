class ReviewSerializer < ActiveModel::Serializer
    attributes :content, :rating, :book_id
    belongs_to :book 
  
  end