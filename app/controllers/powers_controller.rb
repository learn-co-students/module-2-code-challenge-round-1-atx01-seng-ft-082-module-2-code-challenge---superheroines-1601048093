class PowersController < ApplicationController
  
  def index
    @powers = Power.all
  end

  def show
    current_power
  end

  def current_power
    @power = Power.find(params[:id])
  end

end
