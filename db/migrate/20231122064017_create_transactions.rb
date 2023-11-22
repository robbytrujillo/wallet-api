class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :sum
      t.string :fount_id
      t.string :fount
      t.string :purpose_id
      t.string :purpose

      t.timestamps
    end
  end
end
