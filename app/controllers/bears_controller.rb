class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end

  def show
    @bear = Bear.find(params[:id])
  end

  def new
    @bear = Bear.new
  end

  def create
    @bear = Bear.new(bear_params)
    if @bear.save
      redirect_to  bears_path
    else
      render :new
    end
  end





  private
  def bear_params
    params.require(:bear).permit(:name, :cost, :country, :color)
  end
end
