class TallersController < ApplicationController
  before_action :set_taller, only: [:show, :edit, :update, :destroy]

  # GET /tallers
  # GET /tallers.json
  def index
    @tallers = Taller.all
  end

  # GET /tallers/1
  # GET /tallers/1.json
  def show
  end

  # GET /tallers/new
  def new
    @taller = Taller.new
  end

  # GET /tallers/1/edit
  def edit
  end

  # POST /tallers
  # POST /tallers.json
  def create
    @taller = Taller.new(taller_params)

    respond_to do |format|
      if @taller.save
        format.html { redirect_to @taller, notice: 'Taller was successfully created.' }
        format.json { render :show, status: :created, location: @taller }
      else
        format.html { render :new }
        format.json { render json: @taller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tallers/1
  # PATCH/PUT /tallers/1.json
  def update
    respond_to do |format|
      if @taller.update(taller_params)
        format.html { redirect_to @taller, notice: 'Taller was successfully updated.' }
        format.json { render :show, status: :ok, location: @taller }
      else
        format.html { render :edit }
        format.json { render json: @taller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tallers/1
  # DELETE /tallers/1.json
  def destroy
    @taller.destroy
    respond_to do |format|
      format.html { redirect_to tallers_url, notice: 'Taller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taller
      @taller = Taller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taller_params
      params.require(:taller).permit(:nombre_proyecto, :inst_contraparte, :responsable, :telefono, :fax, :email)
    end
end
