class Api::CompaniesController < ApplicationController
  # GET /api/notes
  def index
    @companies = Store.all

    render json: @companies
  end

  def new
  	@company = Company.new
  end
end