class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :duration
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
