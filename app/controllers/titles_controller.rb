class TitlesController < ApplicationController
    belongs_to :author, :genre 
    has_many :reviews 
end
