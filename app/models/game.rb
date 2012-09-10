class Game < ActiveRecord::Base
    has_many :gamings
    has_many :teams, through: :gamings
end