class ItemsController < ApplicationController
  def index
    @items = Item.all
    render :json => @items
  end

  def create
    @item = Item.new(params[:item])
    @item.save!

    render :json => @item
  end

  def new
    @item = Item.new

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
