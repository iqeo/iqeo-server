class Ip4AddressesController < ApplicationController
  before_action :set_ip4_address, only: [:show, :edit, :update, :destroy]

  # GET /ip4_addresses
  # GET /ip4_addresses.json
  def index
    @ip4_addresses = Ip4Address.all
  end

  # GET /ip4_addresses/1
  # GET /ip4_addresses/1.json
  def show
  end

  # GET /ip4_addresses/new
  def new
    @ip4_address = Ip4Address.new
  end

  # GET /ip4_addresses/1/edit
  def edit
  end

  # POST /ip4_addresses
  # POST /ip4_addresses.json
  def create
    @ip4_address = Ip4Address.new(ip4_address_params)

    respond_to do |format|
      if @ip4_address.save
        format.html { redirect_to @ip4_address, notice: 'Ip4 address was successfully created.' }
        format.json { render :show, status: :created, location: @ip4_address }
      else
        format.html { render :new }
        format.json { render json: @ip4_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip4_addresses/1
  # PATCH/PUT /ip4_addresses/1.json
  def update
    respond_to do |format|
      if @ip4_address.update(ip4_address_params)
        format.html { redirect_to @ip4_address, notice: 'Ip4 address was successfully updated.' }
        format.json { render :show, status: :ok, location: @ip4_address }
      else
        format.html { render :edit }
        format.json { render json: @ip4_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip4_addresses/1
  # DELETE /ip4_addresses/1.json
  def destroy
    @ip4_address.destroy
    respond_to do |format|
      format.html { redirect_to ip4_addresses_url, notice: 'Ip4 address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip4_address
      @ip4_address = Ip4Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip4_address_params
      params.require(:ip4_address).permit(:address, :ip4_network_id)
    end
end
