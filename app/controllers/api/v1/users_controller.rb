class Api::V1::UsersController < ApplicationController

    # GET / users
    def index
        users = User.all
        render json: users.to_json(only: [:id, :username, :password])
    end
end
