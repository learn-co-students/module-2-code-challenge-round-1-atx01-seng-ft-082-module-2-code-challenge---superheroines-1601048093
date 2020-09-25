class HeroinePowersController < ApplicationController
    before_action :current_heroine_power, only: [:show, :edit]
    def index
      @heroine_powers = HeroinePower.all
    end
  
    def show 
    end 

    def new 
      @heroine_power = HeroinePower.new 
    end 

    def create 
      new_heroine_power = HeroinePower.create(heroine_power_params)
      if !new_heroine_power.valid? 
        flash[:errors] = new_heroine_power.errors.full_messages
        redirect_to new_heroine_power_path
      else 
        new_heroine_power.save 
        redirect_to heroine_path(@heroine)
      end 
    end 
    
    def update 
    end 
    
    def edit 
    end 
  
    def current_heroine_power 
      @heroine_power = HeroinePower.find(params[:id])
    end 
  
    private 
  
    def heroine_power_params 
      params.require(:heroine_power).permit(:strength)
    end
end

