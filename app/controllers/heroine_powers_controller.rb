class HeroinePowersController < ApplicationController

    def index
        @heroine_powers = HeroinePower.all
    end

    def show
        @heroine_power = HeroinePower.find(params[:id])
    end

    def new
        @heroine_power = HeroinePower.new
        @heroines = Heroine.all
        @powers = Power.all
    end

    def create
        @heroine_power = HeroinePower.new(heroine_power_params)
        if @heroine_power.valid?
            flash[:errors] = @heroine_power.errors.full_messages
            redirect_to new_heroine_power_path
        else
            @heroine_power.save
            redirect_to heroine_path 
        end
    end

    private

    def heroine_power_params
        params.require(:heroine_power).permit(:heroine_id, :power_id)
    end

end