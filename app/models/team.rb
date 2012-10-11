class Team < ActiveRecord::Base
    include ActiveModel::Validations

    has_many :gamings
    has_many :games, through: :gamings

    validates_presence_of :name
  
    attr_accessible :name
end
