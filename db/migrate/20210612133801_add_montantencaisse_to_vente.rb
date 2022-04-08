class AddMontantencaisseToVente < ActiveRecord::Migration[6.0]
  def change
    add_column :ventes, :montantencaisse, :integer,default: 0
  end
end
