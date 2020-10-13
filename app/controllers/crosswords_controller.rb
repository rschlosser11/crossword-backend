class CrosswordsController < ApplicationController 
    def index
        if params[:q]
            if params[:q] == 'easy'
                crosswords = Crossword.easy
            elsif params[:q] == 'medium'
                crosswords = Crossword.medium
            elsif params[:q] == 'hard'
                crosswords = Crossword.hard
            elsif params[:q] == 'sunday'
                crosswords = Crossword.sunday
            end
        else
            crosswords = Crossword.all 
        end

        render json: crosswords, except: [:created_at, :updated_at]
    end

    def show
        crossword = Crossword.find(params[:id].to_i)

        render json: crossword, except: [:created_at, :updated_at]
    end

    def answers
        cross = Crossword.find(params[:id].to_i);
        ans = cross.set_answer_boxes;

        render json: ans
    end
end