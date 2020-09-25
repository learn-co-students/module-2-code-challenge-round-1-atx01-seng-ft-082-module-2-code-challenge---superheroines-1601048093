class HeroinePowersController < ApplicationController
    def new
        @heroinepower = HeroinePower.new
    end
    
    def create
        @heroinepower = HeroinePower.create(hp_params)
        redirect_to heroines_path
        
        #JUST STARTED TO WORK ON VALIDATION WHEN TIME WAS CALLED!!!

        # if @heroinepower.valid?
        #     redirect_to heroines_path
        # else
        #     flash[:errors] = @heroinepower.errors.full_messages
        
        # redirect_to new_heroine_power_path
        # end
    end
    
    def hp_params
        params.require(:heroine_power).permit(:heroine_id, :power_id, :strength)
    end
end
