class HabitatsController < ApplicationController
  def index
    @habitats = Habitat.all
  end

  def show
    @habitat = Habitat.find(params[:id])
  end

  def new
    @habitat = Habitat.new
  end

  def create
    @habitat = Habitat.new(params[:habitat])
    if @habitat.save
      redirect_to @habitat, :notice => "Successfully created habitat."
    else
      render :action => 'new'
    end
  end

  def edit
    @habitat = Habitat.find(params[:id])
  end

  def update
    @habitat = Habitat.find(params[:id])
    if @habitat.update_attributes(params[:habitat])
      redirect_to @habitat, :notice  => "Successfully updated habitat."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @habitat = Habitat.find(params[:id])
    @habitat.destroy
    redirect_to habitats_url, :notice => "Successfully destroyed habitat."
  end
end
