class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.date :date, null: false
      t.boolean :title, null: false
      t.text :notes

      t.timestamps
    end
  end
end
