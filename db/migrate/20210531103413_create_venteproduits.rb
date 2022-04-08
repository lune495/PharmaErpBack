class CreateVenteproduits < ActiveRecord::Migration[6.0]
  def change
    create_table :venteproduits do |t|
      t.references :produit, null: false, foreign_key: true
      t.references :vente, null: false, foreign_key: true
      t.integer :qte , default: 0

      t.timestamps
    end
  end
end
