class HeroinePowersController < ApplicationController

    def index
        @heroine_powers = HeroinePower.all
    end

    def show
        current_heroine_power
    end

    def new

    end

    def create

    end

    def edit
        current_heroine_power
        @powers = Power.all
        @heroines = Heroine.all
    end

    def update
        current_heroine_power.update(heroine_power_params)
        redirect_to heroine_path(current_heroine_power)
    end

    def current_heroine_power
        @heroine_power = HeroinePower.find(params[:id])
    end

    def heroine_power_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

end
