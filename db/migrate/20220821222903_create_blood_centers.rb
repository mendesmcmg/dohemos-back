class CreateBloodCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_centers do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
