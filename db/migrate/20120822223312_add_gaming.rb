class AddGaming < ActiveRecord::Migration
  def up
    create_table :gamings do |t|
        t.integer   :team_id
        t.integer   :game_id
    end
  end

  def down
    drop_table :gamings
  end
end
