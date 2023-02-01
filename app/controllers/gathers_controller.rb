class GathersController < ApplicationController
    has_many :gatherers, foreign_key: :attended_gather_id 
    has_many :attendees, through: :gatherers, source: :gather_attendee 
    belongs_to :creator, class_name: "User" 
end
