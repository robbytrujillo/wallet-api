class CreateHoldings < ActiveRecord::Migration[7.1]
  def change
    create_table :holdings do |t|
      t.string :emblem
      t.string :wallets

      t.timestamps
    end
  end
end
