class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :note, index: true
      t.boolean :indicator
      t.string :description
      t.text :details

      t.timestamps
    end
  end
end
