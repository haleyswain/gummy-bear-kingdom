class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end

  def show
    @bear = Bear.find(params[:id])
    render :show
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

  def edit
    @bear = Bear.find(params[:id])
  end

  def update
    @bear= Bear.find(params[:id])
    if @bear.update(bear_params)
      redirect_to bears_path
    else
      render :edit
    end
  end

   def destroy
     @bear = Bear.find(params[:id])
     @bear.destroy
     redirect_to bears_path
   end


  private
  def bear_params
    params.require(:bear).permit(:name, :cost, :country, :color)
  end
end
