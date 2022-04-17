class RemoveDateperemtionFromProduit < ActiveRecord::Migration[6.0]
  def change
    remove_column :produits, :date_peremtion, :string
  end
end
