class AddDefaultValueToDoneInNotes < ActiveRecord::Migration
  def self.up
    change_column :notes, :done, :boolean, default: false
  end

  def self.down
    change_column :notes, :done, :boolean, default: nil
  end
end
