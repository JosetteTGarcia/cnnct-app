class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end


    def show 
        user = User.find_by(id: params[:id])
        if user
            render json: user,  except: [:id, :created_at, :updated_at], methods: [:location]
        else
            render json: {error: "User not found"}, status: :not_found 

        end
    end

    def create
        user = User.create(username: params[:username], img: params[:img], first_name: params[:first_name], last_name: params[:last_name], state: params[:state], city: params[:city], bio: params[:bio])
        render json: user, status: :created
    end

end
