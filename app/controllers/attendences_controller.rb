class AttendencesController < ApplicationController

    def index 
        attendences = Attendence.all 
        render json: attendences
    end


    def show 
        attendee = Attendence.find_by(id: params[:id])
        if attendee
            render json: attendee
            render json: {error: "Attendee not found"}, status: :not_found 

        end
    end

end
