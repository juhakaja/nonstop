class ChangeTitleToDoneInNote < ActiveRecord::Migration
  def change
    rename_column :notes, :title, :done
  end
end
