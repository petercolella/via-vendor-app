class Api::VendorsController < ApplicationController
  # GET /api/notes
  def index
    @vendors = Vendor.all

    render json: @vendors
  end

  def new
  	@vendor = Vendor.new
	@vendor.build_address
  end
end