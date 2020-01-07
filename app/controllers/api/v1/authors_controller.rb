class AuthorsController < ApplicationController
    has_many :titles
    validates :name, presence: true 
end
