class TestController < ApplicationController
  before_action :set_programa, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /programas
  # GET /programas.json
  def index
    @programas = Programa.all
    render json: @programas
  end

  # GET /programas/1
  # GET /programas/1.json
  def show
  end

  # GET /programas/new
  def new
    @programa = Programa.new
  end

  # GET /programas/1/edit
  def edit
  end

  # POST /programas
  # POST /programas.json
  def create
    #@programa = Programa.new
    #@programa.nombre_programa = params[:nombre_programa]
    #@programa.save
    # programa_hash = { }
    
    # programa_hash[:nombre_programa] = params[:programa][:nombre_programa]
    # programa_hash[:tipo_educacion] = params[:tipo_educacion]
    # programa_hash[:titulo_otorga] = params[:titulo_otorga]
    
    # parent_hash = {  }
    # parent_hash[:programa] = params[:programa]
    
    # instalacion_hash = params.permit( [ {instalacion: :aulas_fisico_espacial} ] )
    # #instalacion_hash = params[:instalacion][:aulas_fisico_espacial]
    
    # mod_hash = params.permit(  modulo: [{ nombre: :nombre, horas_modulo: :horas_modulo, descripcion: :descripcion }])
    
    #@componente_teorico = ComponenteTeorico.new(componente_teorico_params)
    @componente_practico = ComponentePractico.new(componente_practico_params)
    
    # @componente_practico.modulos = modulo_params.map  do |m|
      
    #   @modulo =  Modulo.new(m.symbolize_keys)
      
    #   #@modulo.unidads = unidad_params.map do |u|
    #   #  @unidad = Unidad.new(u.symbolize_keys)
    #   #end
      
    # end

    @componente_practico.save
    
    render json: componente_practico_params
    
  end

  # PATCH/PUT /programas/1
  # PATCH/PUT /programas/1.json
  def update
    respond_to do |format|
      if @programa.update(programa_params)
        format.html { redirect_to @programa, notice: 'Programa was successfully updated.' }
        format.json { render :show, status: :ok, location: @programa }
      else
        format.html { render :edit }
        format.json { render json: @programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programas/1
  # DELETE /programas/1.json
  def destroy
    @programa.destroy
    respond_to do |format|
      format.html { redirect_to programas_url, notice: 'Programa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programa
      @programa = Programa.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def programa_params
      #params.require(:programa).permit(:nombre_programa, :tipo_educacion, :titulo_otorga, :tiempo_formacion, :familia_profesional)
    end
    
    def componente_teorico_params
      params.require(:componente_teorico).permit(:nombre_teorico, :total_horas)
    end
    
    def modulo_params
      #params.permit( [{ modulo: { nombre: :nombre, horas_modulo: :horas_modulo, descripcion: :descripcion }}])
      #params.permit( [ {instalacion: :aulas_fisico_espacial} ] )
      #params.fetch(:modulo)  
    end
    
    def componente_practico_params
      #params.require(:componente_practico).permit(:nombre_practico, :total_horas)
      #params.fetch(:componente_practico)
      params.require(:componente_practico).permit(
        :nombre_practico, 
        :total_horas,
        :modulos_attributes => [ :nombre, :horas_modulo, :descripcion ] )
    end
    
    def unidad_params
      #params.require(:unidad).permit(:nombre_unidad, :competencias, :horas_unidad)
      #params.fetch(:unidad)
      
    end
    
end
