class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :number
      t.integer :initial_amount
      t.integer :actual_amount
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
