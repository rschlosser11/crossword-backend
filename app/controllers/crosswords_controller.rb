class CrosswordsController < ApplicationController 
    def index
        crosswords = Crossword.all 

        render json: crosswords, except: [:created_at, :updated_at]
    end

    def show
        crossword = Crossword.find(params[:id])

        render json: crossword, except: [:created_at, :updated_at]
    end
end