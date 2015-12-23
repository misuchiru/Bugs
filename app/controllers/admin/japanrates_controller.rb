class Admin::JapanratesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @japanrates = Japanrate.all
  end
  def new
    @japanrate = Japanrate.new
  end
  def create
    @japanrate = Japanrate.new(japanrate_params)
    if @japanrate.save
      redirect_to admin_japanrates_path
    else
      render :new
    end
  end
  def edit
    @japanrate = Japanrate.find(params[:id])
  end
  def update
    @japanrate = Japanrate.find(params[:id])
    if @japanrate.update(japanrate_params)
      redirect_to admin_japanrates_path
    else
      render :edit
    end
  end
  def destroy
    @japanrate = Japanrate.find(params[:id])
    @japanrate.destroy
    redirect_to admin_japanrates_path
  end

  private
  def japanrate_params
    params.require(:japanrate).permit(:bank, :url, :cashrate_buy, :cashrate_sell, :sightrate_buy, :sightrate_sell)
  end
end
