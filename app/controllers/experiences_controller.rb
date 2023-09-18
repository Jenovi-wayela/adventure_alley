class ExperiencesController < ApplicationController
  def index
  end

  def new
      @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to @experience, notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :description, :date, :location, :capacity, :price)
  end
end
