class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
  end

  def create
    store = Store.new store_params

    store.save

    redirect_to stores_path
  end

  def show
    @store = Store.find params[:id]
  end

  def edit
    @store = Store.find params[:id]
  end

  def update
    @store = Store.find params[:id]

    @store.update store_params

    redirect_to stores_path
  end

  private
  def store_params
    params.require(:store).permit(:name, :description, :address, :phone)
  end
end