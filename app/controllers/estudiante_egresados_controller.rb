class EstudianteEgresadosController < ApplicationController
  before_action :set_estudiante_egresado, only: [:show, :edit, :update, :destroy]

  # GET /estudiante_egresados
  # GET /estudiante_egresados.json
  def index
    @estudiante_egresados = EstudianteEgresado.all
  end

  # GET /estudiante_egresados/1
  # GET /estudiante_egresados/1.json
  def show
  end

  # GET /estudiante_egresados/new
  def new
    @estudiante_egresado = EstudianteEgresado.new
  end

  # GET /estudiante_egresados/1/edit
  def edit
  end

  # POST /estudiante_egresados
  # POST /estudiante_egresados.json
  def create
    @estudiante_egresado = EstudianteEgresado.new(estudiante_egresado_params)

    respond_to do |format|
      if @estudiante_egresado.save
        format.html { redirect_to @estudiante_egresado, notice: 'Estudiante egresado was successfully created.' }
        format.json { render :show, status: :created, location: @estudiante_egresado }
      else
        format.html { render :new }
        format.json { render json: @estudiante_egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudiante_egresados/1
  # PATCH/PUT /estudiante_egresados/1.json
  def update
    respond_to do |format|
      if @estudiante_egresado.update(estudiante_egresado_params)
        format.html { redirect_to @estudiante_egresado, notice: 'Estudiante egresado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudiante_egresado }
      else
        format.html { render :edit }
        format.json { render json: @estudiante_egresado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiante_egresados/1
  # DELETE /estudiante_egresados/1.json
  def destroy
    @estudiante_egresado.destroy
    respond_to do |format|
      format.html { redirect_to estudiante_egresados_url, notice: 'Estudiante egresado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante_egresado
      @estudiante_egresado = EstudianteEgresado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudiante_egresado_params
      params.require(:estudiante_egresado).permit(:nombre, :apellido, :genero, :edad, :fecha_nacimiento, :numero_identificacion, :grupo_etnico, :nivel_escolaridad, :es_empleado, :caracter_empleo, :fecha_egreso)
    end
end
