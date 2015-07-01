class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new params[:pet]
  end

  def index
    @pets = Pet.find params[:id]
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
end