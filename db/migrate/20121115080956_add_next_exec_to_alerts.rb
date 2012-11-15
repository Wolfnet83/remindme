class AddNextExecToAlerts < ActiveRecord::Migration
  def change
    add_column :alerts, :next_exec, :date 
  end
end
