class Ip4NetworksController < ApplicationController
  before_action :set_ip4_network, only: [:show, :edit, :update, :destroy]

  # GET /ip4_networks
  # GET /ip4_networks.json
  def index
    @ip4_networks = Ip4Network.all
  end

  # GET /ip4_networks/1
  # GET /ip4_networks/1.json
  def show
  end

  # GET /ip4_networks/new
  def new
    @ip4_network = Ip4Network.new
  end

  # GET /ip4_networks/1/edit
  def edit
  end

  # POST /ip4_networks
  # POST /ip4_networks.json
  def create
    @ip4_network = Ip4Network.new(ip4_network_params)

    respond_to do |format|
      if @ip4_network.save
        format.html { redirect_to @ip4_network, notice: 'Ip4 network was successfully created.' }
        format.json { render :show, status: :created, location: @ip4_network }
      else
        format.html { render :new }
        format.json { render json: @ip4_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip4_networks/1
  # PATCH/PUT /ip4_networks/1.json
  def update
    respond_to do |format|
      if @ip4_network.update(ip4_network_params)
        format.html { redirect_to @ip4_network, notice: 'Ip4 network was successfully updated.' }
        format.json { render :show, status: :ok, location: @ip4_network }
      else
        format.html { render :edit }
        format.json { render json: @ip4_network.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip4_networks/1
  # DELETE /ip4_networks/1.json
  def destroy
    @ip4_network.destroy
    respond_to do |format|
      format.html { redirect_to ip4_networks_url, notice: 'Ip4 network was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip4_network
      @ip4_network = Ip4Network.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip4_network_params
      params.require(:ip4_network).permit(:name, :desc, :address, :mask)
    end
end
