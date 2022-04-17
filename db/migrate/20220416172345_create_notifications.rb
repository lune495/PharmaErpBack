class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :produit, null: false, foreign_key: true
      t.text :contenu
      t.boolean :etat , default: false

      t.timestamps
    end
  end
end
