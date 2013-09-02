class HomesController < ApplicationController
  def create
    @home = Home.create(params[:home])
    
  end

  def new
    @home = Home.new
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end
end
