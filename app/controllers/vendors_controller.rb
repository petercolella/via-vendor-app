class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show
    vendor = Vendor.find(params[:id])
    render json: vendor
  end

  def create
    vendor = Vendor.new(vendor_params)
    puts(vendor_params)

    if vendor.save
      render json: vendor, status: :created, location: vendor
    else
      render json: vendor.errors, status: :unprocessable_entity
    end
  end

  def update
    vendor = Vendor.find(params[:id])
    if vendor.update(vendor_params)
      render json: vendor
    else
      render json: vendor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    vendor = Vendor.find(params[:id])
    vendor.destroy

    render json: {status: 204}
  end

  def new
  	@vendor = Vendor.new
	@vendor.build_address
  end
end