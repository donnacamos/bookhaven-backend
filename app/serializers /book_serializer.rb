class BookSerializer < ActiveModel::Serializer
    attributes :title, :author, :genre
    has_many :reviews
  
  end