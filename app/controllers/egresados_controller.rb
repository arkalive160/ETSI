class EgresadosController < ApplicationController
  before_action :set_egresado, only: [:show, :edit, :update, :destroy]

  # GET /egresados
  # GET /egresados.json
  def index
    @egresados = Egresado.all
  end

  # GET /egresados/1
  # GET /egresados/1.json
  def show
  end

  # GET /egresados/new
  def new
    @egresado = Egresado.new
  end

  # GET /egresados/1/edit
  def edit
  end

  # POST /egresados
  # POST /egresados.json
  def create
    @egresado = Egresado.new(egresado_params)

    respond_to do |format|
      if @egresado.save
        format.html { redirect_to @egresado, notice: 'Egresado was successfully created.' }
        format.json { render :show, status: :created, location: @egresado }
      else
        format.html { render :new }
        format.json { render json: @egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egresados/1
  # PATCH/PUT /egresados/1.json
  def update
    respond_to do |format|
      if @egresado.update(egresado_params)
        format.html { redirect_to @egresado, notice: 'Egresado was successfully updated.' }
        format.json { render :show, status: :ok, location: @egresado }
      else
        format.html { render :edit }
        format.json { render json: @egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egresados/1
  # DELETE /egresados/1.json
  def destroy
    @egresado.destroy
    respond_to do |format|
      format.html { redirect_to egresados_url, notice: 'Egresado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egresado
      @egresado = Egresado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egresado_params
      params.require(:egresado).permit(:es_empleado, :caracter_empleo, :fecha_egreso)
    end
end
