class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :entries, :users
    add_foreign_key :entries, :games
    add_foreign_key :entries, :pools
    add_foreign_key :entries, :teams

    add_foreign_key :games, :teams, column: :home_team_id
    add_foreign_key :games, :teams, column: :away_team_id
    add_foreign_key :games, :teams, column: :winner_team_id
    add_foreign_key :games, :weeks
  end
end
