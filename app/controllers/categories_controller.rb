class CategoriesController < ApplicationController

  def index
    @categories = Category.all

    render :index
  end

  def create
    @category = Category.new(params[:category])

    @category.save!
  end

  def new
    render :new
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
