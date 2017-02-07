class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.text :description
      t.integer :team_hours

      t.timestamps
    end
  end
end
