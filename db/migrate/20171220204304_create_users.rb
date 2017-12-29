class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :start_time, default: "6:00am"
      t.string :end_time, default: "10:00pm"
      t.timestamps
    end
  end
end
