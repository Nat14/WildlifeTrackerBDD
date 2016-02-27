class SpeciesController < ApplicationController
  def index
      @species = Species.all
  end

  def create
    if params.has_key?(:name) && !params[:name].strip.empty?
      @animal = Species.new
      @animal.name = params[:name]
      @animal.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
