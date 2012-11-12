class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :event
      t.text :event_description
      t.integer :user_id
      t.integer :period
      t.date :start_time
      t.date :last_executed
      t.boolean :active

      t.timestamps
    end
  end
end
