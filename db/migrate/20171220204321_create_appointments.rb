class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :duration
      t.integer :user_id
      t.float :x, default: 0
      t.float :y, default: 49.5
      t.timestamps
    end
  end
end
