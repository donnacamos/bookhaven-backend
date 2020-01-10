class TitleSerializer < ActiveModel::Serializer 
    attributes :name
    has_many :reviews 
end 