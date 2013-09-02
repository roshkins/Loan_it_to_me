class ItemsController < ApplicationController
  def index
    @items = Item.where(category_id: params[:category_id]).all
    
    respond_to do |format|
      format.html #TODO: remove
      format.json { render [:handlers] => :rabl }
    end
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
