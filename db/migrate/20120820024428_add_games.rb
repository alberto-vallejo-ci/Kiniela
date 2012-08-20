class AddGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
        t.integer   :local_team_id
        t.integer   :visitor_team_id
        t.integer   :local_score
        t.integer   :visitor_score
        t.integer   :winner_team_id 
    end
  end

  def down
    drop_table :games
  end
end
