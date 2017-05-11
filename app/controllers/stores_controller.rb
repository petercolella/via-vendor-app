class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def new
  	@store = Store.new
	@store.build_address
  end
end