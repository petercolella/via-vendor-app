class VendorsController < ApplicationController

  before_action :load_company

  def index
    @company = Company.find(params[:company_id])
    @vendors = @company.vendors.all
    # binding.pry
  end

  def show
    @vendor = @company.vendors.find(params[:id])
    @company = @vendor.company
    @vendor.address
  end

  def new
    @company = Company.find(params[:company_id])
    @vendor = Vendor.new
    @vendor.build_address
  end

  def edit
    @company = Company.find(params[:company_id])
    @vendor = @company.vendors.find(params[:id])
  end

  def create
    @vendor = @company.vendors.new(vendor_params)
    @company = @vendor.company

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to [@company, @vendor], notice: 'Vendor was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @vendor = @company.vendors.find(params[:id])
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to [@company, @vendor], notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vendor = @company.vendors.find(params[:id])
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to company_vendors_path(@company), notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_company
      @company = Company.find(params[:company_id])
    end

    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    def vendor_params
      params.require(:vendor).permit(:vendor_name, :vendor_contact_name, :vendor_contact_phone, :vendor_contact_email, :vendor_logo, :vendor_website, :info, :order_window, :delivery_window, :attachment, :company_id, :store_id, :addressable)
    end
end