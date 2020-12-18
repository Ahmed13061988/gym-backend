class GymsController < ApplicationController
    before_action :set_gym, only: [:show]

    def index 
        render json: Gym.all 
    end 

    def show
        render json: @gym, serializer: GymShowSerializer
    end 
    
    private 

    def set_gym
       @gym = Gym.find_by_id(params[:id])
    end 


end
