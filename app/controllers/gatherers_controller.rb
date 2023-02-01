class GatherersController < ApplicationController
    belongs_to :gather_attendee, class_name: "User" 
    belongs_to :attended_gather, class_name: "Gather"
end
