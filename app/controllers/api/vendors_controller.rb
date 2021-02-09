class Api::VendorsController < ApplicationController
  # GET /api/notes
  def index
    @vendors = Vendor.all

    render json: @vendors
  end

  def show
    vendor = Doctor.find(params[:id])
    render json: vendor
  end

  def create
    vendor = Doctor.new(vendor_params)
    puts(vendor_params)

    if vendor.save
      render json: vendor, status: :created, location: vendor
    else
      render json: vendor.errors, status: :unprocessable_entity
    end
  end

  def update
    vendor = Doctor.find(params[:id])
    if vendor.update(vendor_params)
      render json: vendor
    else
      render json: vendor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    vendor = Doctor.find(params[:id])
    vendor.destroy

    render json: {status: 204}
  end

  def new
  	@vendor = Vendor.new
	@vendor.build_address
  end
end