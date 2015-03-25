class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :reason
      t.string :name
      t.datetime :date
      t.datetime :time

      t.timestamps null: false
    end
  end
end
