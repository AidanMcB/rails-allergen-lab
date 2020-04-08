class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def new 
        @recipe = Recipe.new
        @users = User.all
    end

    def create
        @recipe = Recipe.create({
            name: params[:recipe][:name],
            user_id: params[:recipe][:user_id]
        })
        redirect_to recipes_path
    end



end