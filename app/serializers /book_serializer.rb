class BookSerializer < ActiveModel::Serializer
    attributes :title, :author, :genre, :stars, :reviews 
  
  end