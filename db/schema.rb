# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_09_004557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "toys", force: :cascade do |t|
    t.string "nome"
    t.string "qualidade"
    t.integer "ano"
    t.string "escala"
    t.string "serie"
    t.string "imagem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "moderado", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "apelido"
    t.string "password_digest"
    t.boolean "moderador"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
