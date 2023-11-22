class CreateWallets < ActiveRecord::Migration[7.1]
  def change
    create_table :wallets do |t|
      t.string :balance
      t.string :owner_id
      t.string :owner

      t.timestamps
    end
  end
end
