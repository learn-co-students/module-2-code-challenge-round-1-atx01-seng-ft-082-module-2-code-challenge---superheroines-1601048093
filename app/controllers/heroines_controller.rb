class HeroinesController < ApplicationController
  before_action :current_heroine, only: [:show]
  def index
    @heroines = Heroine.all
  end

  def show 
  end 

  def current_heroine 
    @heroine = Heroine.find(params[:id])
  end 

  private 

  def heroine_params 
    params.require(:heroine).permit(:name, :super_name)
  end 
end
