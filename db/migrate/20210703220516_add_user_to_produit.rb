class AddUserToProduit < ActiveRecord::Migration[6.0]
  def change
    add_reference :produits, :user, null: false, foreign_key: true
  end
end
