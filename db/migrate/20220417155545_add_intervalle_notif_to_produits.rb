class AddIntervalleNotifToProduits < ActiveRecord::Migration[6.0]
  def change
    add_column :produits, :intervalle_notif, :integer, default: 0
  end
end
