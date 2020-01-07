class Title < ApplicationRecord
    belongs_to :author, :genre 
    has_many :reviews 
    validates :name, presence: true 
end
