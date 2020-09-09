class Crossword < ApplicationRecord

    def makeDate 
        Date.strptime(self.date, '%m/%d/%Y')
    end

    def self.easy
        self.select{|crswd| crswd.makeDate.monday? || crswd.makeDate.tuesday?}
    end

    def self.medium
        self.select{|crswd| crswd.makeDate.wednesday? || crswd.makeDate.thursday?}
    end

    def self.hard
        self.select{|crswd| crswd.makeDate.friday? || crswd.makeDate.saturday?}
    end

    def self.sunday
        self.select{|crswd| crswd.makeDate.sunday?}
    end
end
