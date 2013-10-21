class ParteobrasController < ApplicationController
  before_action :set_parteobra, only: [:show, :edit, :update, :destroy]

  # GET /parteobras
  # GET /parteobras.json
  def index
    @parteobras = Parteobra.all
  end

  # GET /parteobras/1
  # GET /parteobras/1.json
  def show
  end

  # GET /parteobras/new
  def new
    @parteobra = Parteobra.new
  end

  # GET /parteobras/1/edit
  def edit
  end

  # POST /parteobras
  # POST /parteobras.json
  def create
    @parteobra = Parteobra.new(parteobra_params)

    respond_to do |format|
      if @parteobra.save
        format.html { redirect_to @parteobra, notice: 'Parteobra was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parteobra }
      else
        format.html { render action: 'new' }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parteobras/1
  # PATCH/PUT /parteobras/1.json
  def update
    respond_to do |format|
      if @parteobra.update(parteobra_params)
        format.html { redirect_to @parteobra, notice: 'Parteobra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parteobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parteobras/1
  # DELETE /parteobras/1.json
  def destroy
    @parteobra.destroy
    respond_to do |format|
      format.html { redirect_to parteobras_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parteobra
      @parteobra = Parteobra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parteobra_params
      params.require(:parteobra).permit(:nombre)
    end
end
