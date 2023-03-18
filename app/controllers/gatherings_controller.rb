class GatheringsController < ApplicationController

    def index 
        gatherings = Gathering.all 
        render json: gatherings, except: [:id, :created_at, :updated_at]
    end


    def show 
        gathering = Gathering.find_by(id: params[:id])
        if gathering
            render json: gathering,  except: [:id, :created_at, :updated_at], methods: [:location]
        else
            render json: {error: "Gathering not found"}, status: :not_found 

        end
    end
end
