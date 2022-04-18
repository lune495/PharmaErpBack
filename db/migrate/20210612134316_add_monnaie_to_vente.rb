class AddMonnaieToVente < ActiveRecord::Migration[6.0]
  def change
    add_column :ventes, :monnaie, :integer,default: 0
  end
end