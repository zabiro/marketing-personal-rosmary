class IngresopedidosController < ApplicationController
  before_action :set_ingresopedido, only: [:show, :edit, :update, :destroy]

  # GET /ingresopedidos
  # GET /ingresopedidos.json
  def index
    @ingresopedidos = Ingresopedido.all
  end

  # GET /ingresopedidos/1
  # GET /ingresopedidos/1.json
  def show
  end

  # GET /ingresopedidos/new
  def new
    @ingresopedido = Ingresopedido.new
  end

  # GET /ingresopedidos/1/edit
  def edit
  end

  # POST /ingresopedidos
  # POST /ingresopedidos.json
  def create
    @ingresopedido = Ingresopedido.new(ingresopedido_params)

    respond_to do |format|
      if @ingresopedido.save
        format.html { redirect_to action: "new" }
        format.json { render :show, status: :created, location: @ingresopedido }
      else
        format.html { render :new }
        format.json { render json: @ingresopedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingresopedidos/1
  # PATCH/PUT /ingresopedidos/1.json
  def update
    respond_to do |format|
      if @ingresopedido.update(ingresopedido_params)
        format.html { redirect_to @ingresopedido, notice: 'Ingresopedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingresopedido }
      else
        format.html { render :edit }
        format.json { render json: @ingresopedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingresopedidos/1
  # DELETE /ingresopedidos/1.json
  def destroy
    @ingresopedido.destroy
    respond_to do |format|
      format.html { redirect_to ingresopedidos_url, notice: 'Ingresopedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingresopedido
      @ingresopedido = Ingresopedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingresopedido_params
      params.require(:ingresopedido).permit(:Ndefactura)
    end
end
