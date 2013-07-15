class AddDefaultValueToIndicatorInTasks < ActiveRecord::Migration
  def self.up
    change_column :tasks, :indicator, :boolean, default: false
  end

  def self.down
    change_column :tasks, :indicator, :boolean, default: nil
  end
end
