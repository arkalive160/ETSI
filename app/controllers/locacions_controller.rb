class LocacionsController < ApplicationController
  before_action :set_locacion, only: [:show, :edit, :update, :destroy]

  # GET /locacions
  # GET /locacions.json
  def index
    @locacions = Locacion.all
  end

  # GET /locacions/1
  # GET /locacions/1.json
  def show
  end

  # GET /locacions/new
  def new
    @locacion = Locacion.new
  end

  # GET /locacions/1/edit
  def edit
  end

  # POST /locacions
  # POST /locacions.json
  def create
    @locacion = Locacion.new(locacion_params)

    respond_to do |format|
      if @locacion.save
        format.html { redirect_to @locacion, notice: 'Locacion was successfully created.' }
        format.json { render :show, status: :created, location: @locacion }
      else
        format.html { render :new }
        format.json { render json: @locacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locacions/1
  # PATCH/PUT /locacions/1.json
  def update
    respond_to do |format|
      if @locacion.update(locacion_params)
        format.html { redirect_to @locacion, notice: 'Locacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @locacion }
      else
        format.html { render :edit }
        format.json { render json: @locacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locacions/1
  # DELETE /locacions/1.json
  def destroy
    @locacion.destroy
    respond_to do |format|
      format.html { redirect_to locacions_url, notice: 'Locacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locacion
      @locacion = Locacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locacion_params
      params.require(:locacion).permit(:pais, :ciudad, :direccion)
    end
end
