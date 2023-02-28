class User < ApplicationRecord

# User has many gathering events that they have created, 
# labeled creator_id in the Gathering table
    has_many :gatherings_as_creator,
        class_name: 'Gathering',
        foreign_key: :creator_id
    
    has_many :attendences
    has_many :gatherings, 
        through: :attendences
end
