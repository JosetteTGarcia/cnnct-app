class Gathering < ActiveRecord::Base 
    belongs_to :creator,
        class_name: 'User'
    has_many :attendences
    has_many :attendees,
        through: :attendences,
        class_name: 'User'

    belongs_to :activity


    has_many :interest_gathers
    has_many :interests,
        through: :interest_gathers
end
