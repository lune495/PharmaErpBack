class AddUserToVente < ActiveRecord::Migration[6.0]
  def change
    add_reference :ventes, :user, null: false, foreign_key: true
  end
end
