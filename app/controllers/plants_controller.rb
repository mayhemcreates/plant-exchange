class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
        @categories = Category.all

  end


  def create
    @plant = Plant.new(plant_params)
    @categories = Category.all
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      puts @plant.errors.full_messages
      redirect_to new_plant_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def plant_params
    params.require(:plant).permit(:category_id, photos: [])
  end

end
