class GameSerializer < ActiveModel::Serializer
    has_many :gamings
    # has_many :teams, through: :gamings

    attributes :id, :winner_team_id
end
