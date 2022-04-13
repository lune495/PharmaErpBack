class CreateProduitMagasins < ActiveRecord::Migration[6.0]
  def change
    create_table :produit_magasins do |t|
      t.integer :qte
      t.references :produit, null: false, foreign_key: true
      t.references :magasin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
