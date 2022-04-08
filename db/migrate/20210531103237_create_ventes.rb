class CreateVentes < ActiveRecord::Migration[6.0]
  def change
    create_table :ventes do |t|
      t.integer :montant
      t.integer :qte , default: 0

      t.timestamps
    end
  end
end
