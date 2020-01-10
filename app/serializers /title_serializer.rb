class TitleSerializer < ActiveModel::Serializer 
    attributes :name, :author_id, :genre_id
    has_many :reviews 
end 