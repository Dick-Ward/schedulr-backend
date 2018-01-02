class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :duration
      t.integer :user_id
      t.string :difficulty, default: "normal"
      t.float :x, default: 0
      t.float :y, default: 14.5
      t.timestamps
    end
  end
end
