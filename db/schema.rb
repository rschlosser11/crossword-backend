# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_09_191356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crosswords", force: :cascade do |t|
    t.string "across_ans", array: true
    t.string "down_ans", array: true
    t.string "author"
    t.string "across_clues", array: true
    t.string "down_clues", array: true
    t.string "copyright"
    t.string "date"
    t.string "editor"
    t.string "grid", array: true
    t.integer "gridnums", array: true
    t.string "publisher"
    t.integer "cols"
    t.integer "rows"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["across_ans"], name: "index_crosswords_on_across_ans", using: :gin
    t.index ["across_clues"], name: "index_crosswords_on_across_clues", using: :gin
    t.index ["down_ans"], name: "index_crosswords_on_down_ans", using: :gin
    t.index ["down_clues"], name: "index_crosswords_on_down_clues", using: :gin
    t.index ["grid"], name: "index_crosswords_on_grid", using: :gin
    t.index ["gridnums"], name: "index_crosswords_on_gridnums", using: :gin
  end

end
