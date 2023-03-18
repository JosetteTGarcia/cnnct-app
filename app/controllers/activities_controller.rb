class ActivitiesController < ApplicationController


    def index 
        activities = Activity.all 
        render json: activities, except: [:created_at, :updated_at]

    end


    def show 
        activity = Activty.find_by(id: params[:id])
        if activity
            render json: activity,  except: [:id, :created_at, :updated_at]
        else
            render json: {error: "Activity not found"}, status: :not_found 

        end
    end

end
