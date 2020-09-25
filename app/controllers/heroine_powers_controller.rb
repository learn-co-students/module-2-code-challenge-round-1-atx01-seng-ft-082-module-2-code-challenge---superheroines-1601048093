class HeroinePowersController < ApplicationController
def new
    @heroine_power = HeroinePower.new
    @heroines = Heroine.all
    @powers = Power.all
end

def create
@heroine_power = HeroinePower.create(heroine_power_params)
redirect_to heroine_path(@heroine)
end

private
def heroine_power_params
    params.require(:heroine_power).permit(:strength, :heroine_id, :power_id)
end

end

# t.string "strength"
#     t.integer "heroine_id"
#     t.integer "power_id"#