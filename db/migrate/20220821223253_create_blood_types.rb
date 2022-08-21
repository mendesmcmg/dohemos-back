class CreateBloodTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :blood_types do |t|
      t.string :name
      t.integer :status
      t.references :blood_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
