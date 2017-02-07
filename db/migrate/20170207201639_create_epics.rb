class CreateEpics < ActiveRecord::Migration[5.0]
  def change
    create_table :epics do |t|
      t.text :description

      t.timestamps
    end
  end
end
