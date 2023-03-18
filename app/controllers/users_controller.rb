class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:id, :created_at, :updated_at]
    end


    def show 
        user = User.find_by(id: params[:id])
        if user
            render json: user,  except: [:id, :created_at, :updated_at], methods: [:location]
        else
            render json: {error: "User not found"}   

        end
    end

end
