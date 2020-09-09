require 'uri'
require 'net/http'
require 'openssl'

def get_data(year, month, day) 
    uri = URI("https://raw.githubusercontent.com/doshea/nyt_crosswords/master/#{year}/#{month}/#{day}.json")

    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body)
end


crswd1 = get_data('1976', '01', '01');
crswd2 = get_data('1999', '02', '12');
crswd3 = get_data('2000', '04', '16');
crswd4 = get_data('2010', '09', '02');
crswd5 = get_data('1989', '02', '12');
crswd6 = get_data('1995', '10', '16');
crswd7 = get_data('1991', '03', '19');
crswd8 = get_data('2017', '12', '01');
crswd9 = get_data('2001', '09', '11');
crswd10 = get_data('1980', '05', '10');
crswd11 = get_data('2014', '06', '30');
crswd12 = get_data('2000', '01', '01');
crswd13 = get_data('1990', '02', '16');
crswd14 = get_data('2007', '05', '10');
crswd15 = get_data('2011', '05', '15');
crswd16 = get_data('2016', '11', '21');

Crossword.find_or_create_by(across_ans: crswd1['answers']['across'], down_ans: crswd1['answers']['down'], author: crswd1['author'], across_clues: crswd1['clues']['across'], down_clues: crswd1['clues']['down'], copyright: crswd1['copyright'], date: crswd1['date'], editor: crswd1['editor'], grid: crswd1['grid'], gridnums: crswd1['gridnums'], publisher: crswd1['publisher'], cols: crswd1['size']['cols'], rows: crswd1['size']['rows'], title: crswd1['title'])
Crossword.find_or_create_by(across_ans: crswd2['answers']['across'], down_ans: crswd2['answers']['down'], author: crswd2['author'], across_clues: crswd2['clues']['across'], down_clues: crswd2['clues']['down'], copyright: crswd2['copyright'], date: crswd2['date'], editor: crswd2['editor'], grid: crswd2['grid'], gridnums: crswd2['gridnums'], publisher: crswd2['publisher'], cols: crswd2['size']['cols'], rows: crswd2['size']['rows'], title: crswd2['title'])
Crossword.find_or_create_by(across_ans: crswd3['answers']['across'], down_ans: crswd3['answers']['down'], author: crswd3['author'], across_clues: crswd3['clues']['across'], down_clues: crswd3['clues']['down'], copyright: crswd3['copyright'], date: crswd3['date'], editor: crswd3['editor'], grid: crswd3['grid'], gridnums: crswd3['gridnums'], publisher: crswd3['publisher'], cols: crswd3['size']['cols'], rows: crswd3['size']['rows'], title: crswd3['title'])
Crossword.find_or_create_by(across_ans: crswd4['answers']['across'], down_ans: crswd4['answers']['down'], author: crswd4['author'], across_clues: crswd4['clues']['across'], down_clues: crswd4['clues']['down'], copyright: crswd4['copyright'], date: crswd4['date'], editor: crswd4['editor'], grid: crswd4['grid'], gridnums: crswd4['gridnums'], publisher: crswd4['publisher'], cols: crswd4['size']['cols'], rows: crswd4['size']['rows'], title: crswd4['title'])
Crossword.find_or_create_by(across_ans: crswd5['answers']['across'], down_ans: crswd5['answers']['down'], author: crswd5['author'], across_clues: crswd5['clues']['across'], down_clues: crswd5['clues']['down'], copyright: crswd5['copyright'], date: crswd5['date'], editor: crswd5['editor'], grid: crswd5['grid'], gridnums: crswd5['gridnums'], publisher: crswd5['publisher'], cols: crswd5['size']['cols'], rows: crswd5['size']['rows'], title: crswd5['title'])
Crossword.find_or_create_by(across_ans: crswd6['answers']['across'], down_ans: crswd6['answers']['down'], author: crswd6['author'], across_clues: crswd6['clues']['across'], down_clues: crswd6['clues']['down'], copyright: crswd6['copyright'], date: crswd6['date'], editor: crswd6['editor'], grid: crswd6['grid'], gridnums: crswd6['gridnums'], publisher: crswd6['publisher'], cols: crswd6['size']['cols'], rows: crswd6['size']['rows'], title: crswd6['title'])
Crossword.find_or_create_by(across_ans: crswd7['answers']['across'], down_ans: crswd7['answers']['down'], author: crswd7['author'], across_clues: crswd7['clues']['across'], down_clues: crswd7['clues']['down'], copyright: crswd7['copyright'], date: crswd7['date'], editor: crswd7['editor'], grid: crswd7['grid'], gridnums: crswd7['gridnums'], publisher: crswd7['publisher'], cols: crswd7['size']['cols'], rows: crswd7['size']['rows'], title: crswd7['title'])
Crossword.find_or_create_by(across_ans: crswd8['answers']['across'], down_ans: crswd8['answers']['down'], author: crswd8['author'], across_clues: crswd8['clues']['across'], down_clues: crswd8['clues']['down'], copyright: crswd8['copyright'], date: crswd8['date'], editor: crswd8['editor'], grid: crswd8['grid'], gridnums: crswd8['gridnums'], publisher: crswd8['publisher'], cols: crswd8['size']['cols'], rows: crswd8['size']['rows'], title: crswd8['title'])
Crossword.find_or_create_by(across_ans: crswd9['answers']['across'], down_ans: crswd9['answers']['down'], author: crswd9['author'], across_clues: crswd9['clues']['across'], down_clues: crswd9['clues']['down'], copyright: crswd9['copyright'], date: crswd9['date'], editor: crswd9['editor'], grid: crswd9['grid'], gridnums: crswd9['gridnums'], publisher: crswd9['publisher'], cols: crswd9['size']['cols'], rows: crswd9['size']['rows'], title: crswd9['title'])
Crossword.find_or_create_by(across_ans: crswd10['answers']['across'], down_ans: crswd10['answers']['down'], author: crswd10['author'], across_clues: crswd10['clues']['across'], down_clues: crswd10['clues']['down'], copyright: crswd10['copyright'], date: crswd10['date'], editor: crswd10['editor'], grid: crswd10['grid'], gridnums: crswd10['gridnums'], publisher: crswd10['publisher'], cols: crswd10['size']['cols'], rows: crswd10['size']['rows'], title: crswd10['title'])
Crossword.find_or_create_by(across_ans: crswd16['answers']['across'], down_ans: crswd16['answers']['down'], author: crswd16['author'], across_clues: crswd16['clues']['across'], down_clues: crswd16['clues']['down'], copyright: crswd16['copyright'], date: crswd16['date'], editor: crswd16['editor'], grid: crswd16['grid'], gridnums: crswd16['gridnums'], publisher: crswd16['publisher'], cols: crswd16['size']['cols'], rows: crswd16['size']['rows'], title: crswd16['title'])
Crossword.find_or_create_by(across_ans: crswd11['answers']['across'], down_ans: crswd11['answers']['down'], author: crswd11['author'], across_clues: crswd11['clues']['across'], down_clues: crswd11['clues']['down'], copyright: crswd11['copyright'], date: crswd11['date'], editor: crswd11['editor'], grid: crswd11['grid'], gridnums: crswd11['gridnums'], publisher: crswd11['publisher'], cols: crswd11['size']['cols'], rows: crswd11['size']['rows'], title: crswd11['title'])
Crossword.find_or_create_by(across_ans: crswd12['answers']['across'], down_ans: crswd12['answers']['down'], author: crswd12['author'], across_clues: crswd12['clues']['across'], down_clues: crswd12['clues']['down'], copyright: crswd12['copyright'], date: crswd12['date'], editor: crswd12['editor'], grid: crswd12['grid'], gridnums: crswd12['gridnums'], publisher: crswd12['publisher'], cols: crswd12['size']['cols'], rows: crswd12['size']['rows'], title: crswd12['title'])
Crossword.find_or_create_by(across_ans: crswd13['answers']['across'], down_ans: crswd13['answers']['down'], author: crswd13['author'], across_clues: crswd13['clues']['across'], down_clues: crswd13['clues']['down'], copyright: crswd13['copyright'], date: crswd13['date'], editor: crswd13['editor'], grid: crswd13['grid'], gridnums: crswd13['gridnums'], publisher: crswd13['publisher'], cols: crswd13['size']['cols'], rows: crswd13['size']['rows'], title: crswd13['title'])
Crossword.find_or_create_by(across_ans: crswd14['answers']['across'], down_ans: crswd14['answers']['down'], author: crswd14['author'], across_clues: crswd14['clues']['across'], down_clues: crswd14['clues']['down'], copyright: crswd14['copyright'], date: crswd14['date'], editor: crswd14['editor'], grid: crswd14['grid'], gridnums: crswd14['gridnums'], publisher: crswd14['publisher'], cols: crswd14['size']['cols'], rows: crswd14['size']['rows'], title: crswd14['title'])
Crossword.find_or_create_by(across_ans: crswd15['answers']['across'], down_ans: crswd15['answers']['down'], author: crswd15['author'], across_clues: crswd15['clues']['across'], down_clues: crswd15['clues']['down'], copyright: crswd15['copyright'], date: crswd15['date'], editor: crswd15['editor'], grid: crswd15['grid'], gridnums: crswd15['gridnums'], publisher: crswd15['publisher'], cols: crswd15['size']['cols'], rows: crswd15['size']['rows'], title: crswd15['title'])
