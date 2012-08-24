class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    respond_to do |format|
      format.html
      format.json { render :json => @animals}    
    end
  end

  def show
    @animal = Animal.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @animal}    
    end
  end

  def new
    @animal = Animal.new
  end

  def create
    @species = Species.find(params[:animal][:species_id])
    @animal = @species.animals.build(params[:animal])
    if @animal.save
      redirect_to @animal, :notice => "Successfully created animal."
    else
      render :action => 'new'
    end
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update_attributes(params[:animal])
      redirect_to @animal, :notice  => "Successfully updated animal."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_url, :notice => "Successfully destroyed animal."
  end
end
