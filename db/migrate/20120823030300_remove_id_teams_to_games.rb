class RemoveIdTeamsToGames < ActiveRecord::Migration
  def up
    remove_column :games, :local_team_id
    remove_column :games, :visitor_team_id
    remove_column :games, :local_score
    remove_column :games, :visitor_score
  end

  def down
    add_column :games, :local_team_id, :integer
    add_column :games, :visitor_team_id, :integer
    add_column :games, :local_score, :integer
    add_column :games, :visitor_score, :integer
  end
end
