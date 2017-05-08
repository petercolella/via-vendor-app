class Api::StoresController < ApplicationController
  # GET /api/notes
  def index
    @stores = Store.all

    render json: @stores
  end

  def new
  	@store = Store.new
	@store.build_address
  end
end