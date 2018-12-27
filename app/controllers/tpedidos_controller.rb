class TpedidosController < ApplicationController
  before_action :set_tpedido, only: [:show, :edit, :update, :destroy]

  # GET /tpedidos
  # GET /tpedidos.json
  def index
    @tpedidos = Tpedido.all
  end

  # GET /tpedidos/1
  # GET /tpedidos/1.json
  def show
  end

  # GET /tpedidos/new
  def new
    @tpedido = Tpedido.new
  end

  # GET /tpedidos/1/edit
  def edit
  end

  # POST /tpedidos
  # POST /tpedidos.json
  def create
    @tpedido = Tpedido.new(tpedido_params)

    respond_to do |format|
      if @tpedido.save
        format.html { redirect_to @tpedido, notice: 'Tpedido was successfully created.' }
        format.json { render :show, status: :created, location: @tpedido }
      else
        format.html { render :new }
        format.json { render json: @tpedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tpedidos/1
  # PATCH/PUT /tpedidos/1.json
  def update
    respond_to do |format|
      if @tpedido.update(tpedido_params)
        format.html { redirect_to @tpedido, notice: 'Tpedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @tpedido }
      else
        format.html { render :edit }
        format.json { render json: @tpedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tpedidos/1
  # DELETE /tpedidos/1.json
  def destroy
    @tpedido.destroy
    respond_to do |format|
      format.html { redirect_to tpedidos_url, notice: 'Tpedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpedido
      @tpedido = Tpedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tpedido_params
      params.require(:tpedido).permit(:tipopedido)
    end
end
