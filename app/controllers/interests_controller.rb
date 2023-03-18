class InterestsController < ApplicationController

    def index 
        interests = Interest.all 
        render json: interests, except: [:id, :created_at, :updated_at]

    end


    def show 
    interest = Interest.find_by(id: params[:id])
        if interest
            render json: interest,  except: [:id, :created_at, :updated_at]
        else
            render json: {error: "Interest not found"}, status: :not_found 

        end
    end

end
