class TeamSerializer < ActiveModel::Serializer
    has_many :gamings
    # has_many :games, through: :gamings    

    attributes :id, :name
end
