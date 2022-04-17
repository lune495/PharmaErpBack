class AddDateperemtionToProduit < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :date_peremtion, :string, null: true
  end
end
