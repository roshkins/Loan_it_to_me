class AdminsController < ApplicationController
  def create
    new_objects = []
    new_objects << @user = User.new(params[:user])
    new_objects << @home = Home.new(params[:home])
    new_objects << @item = Item.new(params[:item])
    new_objects << @category = Category.new(params[:category])
    new_objects << @rental = Rental.new(params[:rental])
    new_objects << @rental_review = RentalReview.new(params[:rental_review])

    new_objects.each do |obj|
      next unless obj.valid?
      obj.save!
    end
  end

  def new
    @user = User.new
    @home = Home.new
    @item = Item.new
    @category = Category.new
    @rental = Rental.new
    @rental_review = RentalReview.new
    render :new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
