class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date
      t.string :personal_id
      t.string :phone
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
