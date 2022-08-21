class AddNewFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :birth_date, :date
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :last_donation_date, :date
  end
end
