class Team < ActiveRecord::Base
    has_many :gamings
    has_many :games, through: :gamings
  
    attr_accessible :name
end
