class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.references :status, foreign_key: true
      t.references :priority, foreign_key: true
      t.references :epic, foreign_key: true
      t.string :header
      t.text :body


      # t.references :user, :column => :assigned_to, foreign_key: true
      t.boolean :is_trash
      t.datetime :estimate
      t.datetime :remaining_estimate

      t.timestamps
    end
    add_reference :tasks, :assigned_to, references: :users, index: true
    add_foreign_key :tasks, :users, column: :assigned_to_id

  end
end
