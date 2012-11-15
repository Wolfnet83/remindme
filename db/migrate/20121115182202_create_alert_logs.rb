class CreateAlertLogs < ActiveRecord::Migration
  def change
    create_table :alert_logs do |t|
      t.integer :alert_id
      t.date :executed_on

      t.timestamps
    end
  end
end
