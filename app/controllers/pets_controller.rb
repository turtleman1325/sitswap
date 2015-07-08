class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new pet_params
    if @pet.save
      # @pet.category_ids = params[:categories]
      redirect_to "/pets/#{@pet.id}"
    else
      render 'new'
    end
    #if successful go to show
    #if failed to save go back to new
  end

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find params[:id]
  end

  def destroy
    @pet = Pet.find params[:id]
  end

  def edit
    @pet = Pet.find params[:id]
  end

  def update
    @pet = Pet.find params[:id]
  end

  private

  def pet_params
    params.require(:pet).permit!
  end
end
