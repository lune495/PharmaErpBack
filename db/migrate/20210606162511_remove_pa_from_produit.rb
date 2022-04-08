class RemovePaFromProduit < ActiveRecord::Migration[6.0]
  def change
    remove_column :produits, :pa, :integer
  end
end
