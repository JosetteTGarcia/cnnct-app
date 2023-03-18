class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:id, :created_at, :updated_at]
    end


    def show 
        user = User.find(params[:id])
        render json: user,  except: [:id, :created_at, :updated_at], methods: [:location]
    end

end
