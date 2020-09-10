class Crossword < ApplicationRecord
    after_validation :titlecase_title, on: [:create, :update]

    def make_date 
        Date.strptime(self.date, '%m/%d/%Y')
    end

    def self.easy
        self.select{|crswd| crswd.make_date.monday? || crswd.make_date.tuesday?}
    end

    def self.medium
        self.select{|crswd| crswd.make_date.wednesday? || crswd.make_date.thursday?}
    end

    def self.hard
        self.select{|crswd| crswd.make_date.friday? || crswd.make_date.saturday?}
    end

    def self.sunday
        self.select{|crswd| crswd.make_date.sunday?}
    end

    private

    def titlecase_title
        title_arr = self.title.split(' ')
        title_arr.map! do |word|
            if word == "NY"
                word
            else
                word.titleize;
            end
        end
        self.title = title_arr.join(' ')
    end
end
