class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new params[:category]
    if @category.save
      redirect_to '/categories'
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    @category = Category.find params[:id]
    if @category.update params[:category]
      redirect_to '/categories'
    else
      render 'edit'
    end
  end

  def index
    @categories = Category.order 'name ASC'
  end

  def show
    @category = Category.find params[:id]
  end

  def destroy
    @category = Category.find params[:id]
    if @category.destroy
      redirect_to '/categories'
    else
      redirect_to :back
    end
  end
end
