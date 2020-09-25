class HeroinePowersController < ApplicationController
    def new
        @new_hp = HeroinePower.new
        @powers = Power.all 
        @heroine = Heroine.all
    end

    def create
        new_hp = HeroinePower.create(hp_params)
        redirect_to heroine_path(new_hp.heroine_id)
    end



    def hp_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end

end