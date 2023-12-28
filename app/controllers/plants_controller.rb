class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    
  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
