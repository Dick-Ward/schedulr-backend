class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :startTime, default: "6:00am"
      t.string :endTime, default: "10:00pm"
      t.timestamps
    end
  end
end
