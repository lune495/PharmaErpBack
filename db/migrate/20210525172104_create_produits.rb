class CreateProduits < ActiveRecord::Migration[6.0]
  def change
    create_table :produits do |t|
      t.string :codebarre
      t.string :nom
      t.string :image
      t.integer :pa
      t.integer :pv
      t.integer :limite
      t.integer :qte ,default: 0
      t.references :famille, null: false, foreign_key: true

      t.timestamps
    end
  end
end
