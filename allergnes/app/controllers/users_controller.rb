class UsersController < ApplicationController 
    

    def index 
        @users = User.all 
    end 

    def new 
        @user = User.new
    end 

    def create 
        @user = User.create({
        name: params[:user][:name]
        })
        redirect_to user_path(@user)
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to users_path
    end


end