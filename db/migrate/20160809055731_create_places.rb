class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.text :adress
      t.string :phone_number
      t.string :city
      t.text :description
      t.string :contact_mail
      t.date :established_at

      t.timestamps
    end
  end
end
