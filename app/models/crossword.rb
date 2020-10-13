class Crossword < ApplicationRecord
    after_create :titlecase_title
    before_create :set_answer_boxes;

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

    def set_clue_answer_boxes (num, ans, direction)
        cols = self.cols;
        boxes = [];
        i = num - 1;
        if direction == 'across' 
            while boxes.length < ans 
                boxes << i
                i += 1
            end
        else 
            while boxes.length < ans 
                boxes << i 
                i += cols
            end
        end
        boxes;
    end

    def set_answer_boxes 
        boxes = {};
        self.across_clues.each_with_index do |clue, i| 
            len = self.across_ans[i].length;
            num = clue.split('.')[0].to_i;
            key = "#{num}A"
            boxes["#{num}A"] = self.set_clue_answer_boxes(num, len, 'across')
        end
        self.down_clues.each_with_index do |clue, i|
            len = self.down_ans[i].length;
            num = clue.split('.')[0].to_i;
            boxes["#{num}D"] = self.set_clue_answer_boxes(num, len, 'down')
        end
        boxes;
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
