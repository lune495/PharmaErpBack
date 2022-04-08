class CreateInventairestocks < ActiveRecord::Migration[6.0]
  def change
    create_table :inventairestocks do |t|
      t.references :produit, null: false, foreign_key: true
      t.integer :quantite , default: 0

      t.timestamps
    end
  end
end
