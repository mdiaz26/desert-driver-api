class Api::V1::UsersController < ApplicationController

    # GET / users
    def index
        users = User.all
        render json: users.to_json(include: {:avatar => {only: [:id, :name, :image]}})
    end

    def show
        user = User.find(params[:id])
        render json: user.to_json(include: {:avatar => {only: [:id, :name, :image]}})
    end

    def create
        print user_params
        user = User.new(user_params)
        if user.save
            render json: user.to_json(include: {:avatar => {only: [:id, :name, :image]}})
        else
            render error: {error: 'Unable to create user'}, status: 400
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user.to_json(include: {:avatar => {only: [:id, :name, :image]}})

    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :id, :avatar_id, :music_playing, :game_sound, :music_volume, :game_volume)
    end
end
