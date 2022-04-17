class AddDateperemToProduit < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :date_peremtion, :date
  end
end
