class CreateSprintTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :sprint_teams do |t|
      t.references :sprint, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
