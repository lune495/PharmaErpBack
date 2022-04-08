class CreateMagasins < ActiveRecord::Migration[6.0]
  def change
    create_table :magasins do |t|
      t.integer :stock
      t.integer :pa
      t.integer :limite
      t.references :produit, null: true, foreign_key: true

      t.timestamps
    end
  end
end
