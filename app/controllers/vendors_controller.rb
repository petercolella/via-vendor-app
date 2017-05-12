class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
    @company = Company.find(params[:company_id])
  end

  def show
    @vendor = Vendor.find(params[:id])
    @company = @vendor.company
  end

  def edit
    @vendor = Vendor.find(params[:id])
    @company = @vendor.company
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @company = @vendor.company

    if @vendor.save
      redirect_to company_vendors_path, notice: 'Vendor was successfully created.'
    else
      render json: vendor.errors, status: :unprocessable_entity
    end
  end

  def update
    @vendor = Vendor.find(params[:id])
    # respond_to do |format|
      if @vendor.update(vendor_params)
        redirect_to company_vendors_path, notice: 'Vendor was successfully updated.'
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    # end
  end

  def destroy
    @company = Company.find(params[:company_id])
    @vendor = Vendor.find(params[:id])
    @vendor.destroy

    render json: {status: 204}
  end

  def new
    @company = Company.find(params[:company_id])
  	@vendor = Vendor.new
    @vendor.build_address
  end

  private
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    def vendor_params
      params.require(:vendor).permit(:vendor_name, :vendor_contact_name, :vendor_contact_phone, :vendor_contact_email, :vendor_logo, :vendor_website, :info, :order_window, :delivery_window, :attachment, :company_id, :store_id)
    end
end