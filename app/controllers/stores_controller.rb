class StoresController < ApplicationController

  before_filter :load_parent

  def index
    @company = Company.find(params[:company_id])
    @stores = @company.stores.all
  end

  def show
    @store = @company.stores.find(params[:id])
    @company = @store.company
  end

  def new
  	@company = Company.find(params[:company_id])
  	@store = Store.new
    @store.build_address
  end

  def edit
    @company = Company.find(params[:company_id])
    @store = @company.stores.find(params[:id])
  end

  def create
    @store = @company.stores.new(store_params)
    @company = @store.company

    respond_to do |format|
      if @store.save
        format.html { redirect_to [@company, @store], notice: 'Store was successfully created.' }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @store = @company.stores.find(params[:id])
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to [@company, @store], notice: 'Store was successfully updated.' }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @store = @company.stores.find(params[:id])
    company = store.company
    @store.destroy
    respond_to do |format|
      format.html { redirect_to company_stores_path(@company), notice: 'Store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_parent
      @company = Company.find(params[:company_id])
    end

    def set_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit(:store_name, :store_phone, :company_id, :addressable)
    end
end