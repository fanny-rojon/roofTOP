class RooftopsController < ApplicationController
  before_action :set_rooftop, only: [:show, :edit, :update, :destroy]

  def index
    @rooftops = Rooftop.all
  end

  def show
  end

  def new
    @rooftop = Rooftop.new
  end

  def create
    @rooftop = Rooftop.new(rooftop_params)
    if @rooftop.save
      redirect_to rooftop_path(@rooftop)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @rooftop.update(rooftop_params)
      redirect_to rooftop_path(@rooftop)
    else
      render :edit
    end
  end

  def destroy
    @rooftop.destroy
    redirect_to rooftops_path
  end

  private

  def set_rooftop
    @rooftop = Rooftop.find(params[:id])
  end

  def rooftop_params
    params.require(:rooftop).permit(:name, :description, :price)
  end
end
