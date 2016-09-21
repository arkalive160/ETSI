class EstudianteActivosController < ApplicationController
  before_action :set_estudiante_activo, only: [:show, :edit, :update, :destroy]

  # GET /estudiante_activos
  # GET /estudiante_activos.json
  def index
    @estudiante_activos = EstudianteActivo.all
  end

  # GET /estudiante_activos/1
  # GET /estudiante_activos/1.json
  def show
  end

  # GET /estudiante_activos/new
  def new
    @estudiante_activo = EstudianteActivo.new
  end

  # GET /estudiante_activos/1/edit
  def edit
  end

  # POST /estudiante_activos
  # POST /estudiante_activos.json
  def create
    @estudiante_activo = EstudianteActivo.new(estudiante_activo_params)

    respond_to do |format|
      if @estudiante_activo.save
        format.html { redirect_to @estudiante_activo, notice: 'Estudiante activo was successfully created.' }
        format.json { render :show, status: :created, location: @estudiante_activo }
      else
        format.html { render :new }
        format.json { render json: @estudiante_activo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudiante_activos/1
  # PATCH/PUT /estudiante_activos/1.json
  def update
    respond_to do |format|
      if @estudiante_activo.update(estudiante_activo_params)
        format.html { redirect_to @estudiante_activo, notice: 'Estudiante activo was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudiante_activo }
      else
        format.html { render :edit }
        format.json { render json: @estudiante_activo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiante_activos/1
  # DELETE /estudiante_activos/1.json
  def destroy
    @estudiante_activo.destroy
    respond_to do |format|
      format.html { redirect_to estudiante_activos_url, notice: 'Estudiante activo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante_activo
      @estudiante_activo = EstudianteActivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudiante_activo_params
      params.require(:estudiante_activo).permit(:nombre, :apellido, :genero, :edad, :fecha_nacimiento, :numero_identificacion, :grupo_etnico, :nivel_escolaridad, :codigo_estudiante, :fecha_ingreso)
    end
end
