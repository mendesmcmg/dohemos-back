class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :blood_center, null: false, foreign_key: true
      t.string :donor_name
      t.string :donor_email
      t.integer :donor_blood_type
      t.string :donor_telephone
      t.date :date
      t.time :time
      t.integer :status

      t.timestamps
    end
  end
end
