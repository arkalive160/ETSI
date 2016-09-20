class ComponentePracticosController < ApplicationController
  before_action :set_componente_practico, only: [:show, :edit, :update, :destroy]

  # GET /componente_practicos
  # GET /componente_practicos.json
  def index
    @componente_practicos = ComponentePractico.all
  end

  # GET /componente_practicos/1
  # GET /componente_practicos/1.json
  def show
  end

  # GET /componente_practicos/new
  def new
    @componente_practico = ComponentePractico.new
  end

  # GET /componente_practicos/1/edit
  def edit
  end

  # POST /componente_practicos
  # POST /componente_practicos.json
  def create
    @componente_practico = ComponentePractico.new(componente_practico_params)

    respond_to do |format|
      if @componente_practico.save
        format.html { redirect_to @componente_practico, notice: 'Componente practico was successfully created.' }
        format.json { render :show, status: :created, location: @componente_practico }
      else
        format.html { render :new }
        format.json { render json: @componente_practico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componente_practicos/1
  # PATCH/PUT /componente_practicos/1.json
  def update
    respond_to do |format|
      if @componente_practico.update(componente_practico_params)
        format.html { redirect_to @componente_practico, notice: 'Componente practico was successfully updated.' }
        format.json { render :show, status: :ok, location: @componente_practico }
      else
        format.html { render :edit }
        format.json { render json: @componente_practico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componente_practicos/1
  # DELETE /componente_practicos/1.json
  def destroy
    @componente_practico.destroy
    respond_to do |format|
      format.html { redirect_to componente_practicos_url, notice: 'Componente practico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componente_practico
      @componente_practico = ComponentePractico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def componente_practico_params
      params.require(:componente_practico).permit(:nombre_practico, :total_horas)
    end
end
