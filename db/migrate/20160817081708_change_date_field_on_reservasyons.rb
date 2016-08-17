class ChangeDateFieldOnReservasyons < ActiveRecord::Migration[5.0]
  def change
    change_column :reservasyons, :date, :datetime
  end
end
