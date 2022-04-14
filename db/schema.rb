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

ActiveRecord::Schema.define(version: 2022_04_13_101047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "familles", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventairestocks", force: :cascade do |t|
    t.bigint "produit_id", null: false
    t.integer "quantite", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["produit_id"], name: "index_inventairestocks_on_produit_id"
    t.index ["user_id"], name: "index_inventairestocks_on_user_id"
  end

  create_table "magasins", force: :cascade do |t|
    t.integer "stock"
    t.integer "pa"
    t.integer "limite"
    t.bigint "produit_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produit_id"], name: "index_magasins_on_produit_id"
  end

  create_table "produit_magasins", force: :cascade do |t|
    t.integer "qte"
    t.bigint "produit_id", null: false
    t.bigint "magasin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["magasin_id"], name: "index_produit_magasins_on_magasin_id"
    t.index ["produit_id"], name: "index_produit_magasins_on_produit_id"
  end

  create_table "produits", force: :cascade do |t|
    t.string "codebarre"
    t.string "nom"
    t.string "image"
    t.integer "pv"
    t.integer "limite"
    t.integer "qte", default: 0
    t.bigint "famille_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["famille_id"], name: "index_produits_on_famille_id"
    t.index ["user_id"], name: "index_produits_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.boolean "confirmed", default: false
    t.string "confirmation_token"
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "venteproduits", force: :cascade do |t|
    t.bigint "produit_id", null: false
    t.bigint "vente_id", null: false
    t.integer "qte", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produit_id"], name: "index_venteproduits_on_produit_id"
    t.index ["vente_id"], name: "index_venteproduits_on_vente_id"
  end

  create_table "ventes", force: :cascade do |t|
    t.integer "montant"
    t.integer "qte", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "montantencaisse", default: 0
    t.integer "monnaie", default: 0
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_ventes_on_user_id"
  end

  add_foreign_key "inventairestocks", "produits"
  add_foreign_key "inventairestocks", "users"
  add_foreign_key "magasins", "produits"
  add_foreign_key "produit_magasins", "magasins"
  add_foreign_key "produit_magasins", "produits"
  add_foreign_key "produits", "familles"
  add_foreign_key "produits", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "venteproduits", "produits"
  add_foreign_key "venteproduits", "ventes"
  add_foreign_key "ventes", "users"
end
