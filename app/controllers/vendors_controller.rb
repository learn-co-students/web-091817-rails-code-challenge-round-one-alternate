class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  # def create
  #   @vendor = Vendor.create()
  # end

  def index
    @vendors = Vendor.all
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

  def update
    @vendor = Vendor.find(params[:id])
    @vendor.update(vendor_params)
  end

  private

  def vendor_params
    params.require(:vendor).permit(:name)
    # above I need to add the method that will allow me to access the information to the sweet so that I can assocaite that with my vendor.

  end


end
