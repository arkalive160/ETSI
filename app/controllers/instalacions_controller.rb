class InstalacionsController < ApplicationController
  before_action :set_instalacion, only: [:show, :edit, :update, :destroy]

  # GET /instalacions
  # GET /instalacions.json
  def index
    @instalacions = Instalacion.all
  end

  # GET /instalacions/1
  # GET /instalacions/1.json
  def show
  end

  # GET /instalacions/new
  def new
    @instalacion = Instalacion.new
  end

  # GET /instalacions/1/edit
  def edit
  end

  # POST /instalacions
  # POST /instalacions.json
  def create
    @instalacion = Instalacion.new(instalacion_params)

    respond_to do |format|
      if @instalacion.save
        format.html { redirect_to @instalacion, notice: 'Instalacion was successfully created.' }
        format.json { render :show, status: :created, location: @instalacion }
      else
        format.html { render :new }
        format.json { render json: @instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instalacions/1
  # PATCH/PUT /instalacions/1.json
  def update
    respond_to do |format|
      if @instalacion.update(instalacion_params)
        format.html { redirect_to @instalacion, notice: 'Instalacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @instalacion }
      else
        format.html { render :edit }
        format.json { render json: @instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instalacions/1
  # DELETE /instalacions/1.json
  def destroy
    @instalacion.destroy
    respond_to do |format|
      format.html { redirect_to instalacions_url, notice: 'Instalacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instalacion
      @instalacion = Instalacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instalacion_params
      params.require(:instalacion).permit(:aulas_fisico_espacial, :talleres_fisico_espacial, :aulas_mobiliario, :talleres_mobiliario)
    end
end
