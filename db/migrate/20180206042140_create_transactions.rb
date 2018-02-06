class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :detail
      t.integer :amount
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
