class GenresController < ApplicationController
    has_many :titles 
    validates :name, presence: true 
end
