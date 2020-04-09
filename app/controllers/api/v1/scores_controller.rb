class Api::V1::ScoresController < ApplicationController

    # GET / scores
    def index
        scores = Score.all
        render json: scores.to_json(only: [:id, :points, :distance, :user_id])
    end
end
