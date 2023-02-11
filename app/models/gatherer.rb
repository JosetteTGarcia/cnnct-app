class Gatherer < ApplicationRecord
    belongs_to :gather_attendee, class_name: "User" 
    belongs_to :attended_gather, class_name: "Gather"
    # has_many :interest_gathers
    # has_many :interests, through :interest_gathers
end
