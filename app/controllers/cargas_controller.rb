class CargasController < ApplicationController
  before_action :set_carga, only: [:show, :edit, :update, :destroy]

  # GET /cargas
  # GET /cargas.json
  def index
    @cargas = Carga.all
  end

  # GET /cargas/1
  # GET /cargas/1.json
  def show
  end

  # GET /cargas/new
  def new
    @carga = Carga.new
  end

  # GET /cargas/1/edit
  def edit
  end

  # POST /cargas
  # POST /cargas.json
  def create
    @carga = Carga.new(carga_params)

    respond_to do |format|
      if @carga.save
        format.html { redirect_to @carga, notice: 'Carga was successfully created.' }
        format.json { render :show, status: :created, location: @carga }
      else
        format.html { render :new }
        format.json { render json: @carga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cargas/1
  # PATCH/PUT /cargas/1.json
  def update
    respond_to do |format|
      if @carga.update(carga_params)
        format.html { redirect_to @carga, notice: 'Carga was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga }
      else
        format.html { render :edit }
        format.json { render json: @carga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargas/1
  # DELETE /cargas/1.json
  def destroy
    @carga.destroy
    respond_to do |format|
      format.html { redirect_to cargas_url, notice: 'Carga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga
      @carga = Carga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_params
      params.require(:carga).permit(:fecha, :placa, :campana)
    end
end
