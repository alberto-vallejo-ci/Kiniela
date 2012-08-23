class AddScoreToGamings < ActiveRecord::Migration
  def up
    add_column :gamings, :score, :integer, default: 0
  end

  def down
    remove_column :gamings, :score
  end
end
