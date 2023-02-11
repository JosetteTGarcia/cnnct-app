class Gather < ApplicationRecord
    
    # User can be the "creator" of a gather, 
    # or they can attend a gather as a "gatherer"
    # User can assume different roles
    
    belongs_to :creator, class_name: :User 
    belongs_to :gatherer, class_name: :User


    # has_many :attendees, through: :gatherers, source: :gather_attendee 
    # has_many :interests, through: :interest_gathers
    # belongs_to :activity
end
