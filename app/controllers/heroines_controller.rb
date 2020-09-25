class HeroinesController < ApplicationController
  
  def index
    @heroines = Heroine.all
  end

  def show
    current_heroine
  end

  def edit
    current_heroine
    @power = Power.all
  end

  def update
    current_heroine.update(heroine_params)
    redirect_to heroine_path(current_heroine)
  end

  def current_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end
