class HolyGroundsController < ApplicationController
before_action :set_holy_ground, only: [:edit, :show, :update, :destroy]

  def new
    @holy_ground = HolyGround.new
  end

  def index
    @holy_grounds = HolyGround.all
  end

  def show
  end

  def create
    @holy_ground = HolyGround.new(holy_ground_params)
    if @holy_ground.save
      redirect_to holy_grounds_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @holy_ground.update(holy_ground_params)
      redirect_to holy_ground_path(@holy_ground)
    else
      render 'edit'
    end
  end

  def destroy
    @holy_ground.destroy
    redirect_to holy_grounds_path
  end




  private
  def set_holy_ground
    @holy_ground = HolyGround.find(params[:id])
  end

  def holy_ground_params
    params[:holy_ground].permit!
  end
end
