class RentalsController < ApplicationController
  def index
  end

  def create
  end

  def new
    @rental = Rental.new
    @rental.status = "pending"
    @rental.user_id = current_user.id
    render :new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end
end
