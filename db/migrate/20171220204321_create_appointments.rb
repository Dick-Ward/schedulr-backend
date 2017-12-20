class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.datetime  :date_time
      t.string :title
      t.string :duration
      t.string :street_address
      t.string :city
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
