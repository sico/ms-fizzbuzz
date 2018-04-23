class NumbersController < ApplicationController
  require 'fizzbuzz'

  def new

  end

  def create
    @number = Number.new(number_params)
    if @number.save!
      redirect_to @number
    else
      render 'new'
     end
  end

  def show
    @number = Number.find(params[:id])
  end

  def index
    @numbers = Number.all
  end
end

  def destroy
    @number = Number.find(params[:id])
    @number.destroy
    redirect_to 'number#index'
  end

def number_params
  params.permit(:number)
end