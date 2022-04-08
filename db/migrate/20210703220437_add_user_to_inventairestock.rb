class AddUserToInventairestock < ActiveRecord::Migration[6.0]
  def change
    add_reference :inventairestocks, :user, null: false, foreign_key: true
  end
end
