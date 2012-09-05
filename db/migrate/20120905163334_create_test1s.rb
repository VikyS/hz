class CreateTest1s < ActiveRecord::Migration
  def change
    create_table :test1s do |t|
      t.string :name
      t.datetime :dt
      t.string :user

      t.timestamps
    end
  end
end
