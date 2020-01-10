class AuthorSerializer < ActiveModel::Serializer 
    attributes :name, :title_id
    has_many :titles 
end 