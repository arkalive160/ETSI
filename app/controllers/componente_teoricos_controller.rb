class ComponenteTeoricosController < ApplicationController
  before_action :set_componente_teorico, only: [:show, :edit, :update, :destroy]

  # GET /componente_teoricos
  # GET /componente_teoricos.json
  def index
    @componente_teoricos = ComponenteTeorico.all
  end

  # GET /componente_teoricos/1
  # GET /componente_teoricos/1.json
  def show
  end

  # GET /componente_teoricos/new
  def new
    @componente_teorico = ComponenteTeorico.new
  end

  # GET /componente_teoricos/1/edit
  def edit
  end

  # POST /componente_teoricos
  # POST /componente_teoricos.json
  def create
    @componente_teorico = ComponenteTeorico.new(componente_teorico_params)

    respond_to do |format|
      if @componente_teorico.save
        format.html { redirect_to @componente_teorico, notice: 'Componente teorico was successfully created.' }
        format.json { render :show, status: :created, location: @componente_teorico }
      else
        format.html { render :new }
        format.json { render json: @componente_teorico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componente_teoricos/1
  # PATCH/PUT /componente_teoricos/1.json
  def update
    respond_to do |format|
      if @componente_teorico.update(componente_teorico_params)
        format.html { redirect_to @componente_teorico, notice: 'Componente teorico was successfully updated.' }
        format.json { render :show, status: :ok, location: @componente_teorico }
      else
        format.html { render :edit }
        format.json { render json: @componente_teorico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componente_teoricos/1
  # DELETE /componente_teoricos/1.json
  def destroy
    @componente_teorico.destroy
    respond_to do |format|
      format.html { redirect_to componente_teoricos_url, notice: 'Componente teorico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente_teorico
      @componente_teorico = ComponenteTeorico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componente_teorico_params
      params.require(:componente_teorico).permit(:nombre_teorico, :total_horas)
    end
end
