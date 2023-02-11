class User < ApplicationRecord
    has_many :gathers_as_creator,
        foreign_key: :creator_id,
        class_name: :Gather
    
    has_many :gathers_as_gatherer, 
        foreign_key: :gatherer_id,
        class_name: :Gather
    
    # has_many :gatherers, foreign_key: gather_attendee_id
    # has_many :attended_gathers, through: :gatherers
    # has_many :created_gathers, foreign_key: :creator_id, class_name: "Gather"
end


