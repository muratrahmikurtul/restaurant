class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :phone_number

      t.timestamps
    end
  end
end
