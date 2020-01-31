class FotoperiodosController < ApplicationController
  before_action :set_fotoperiodo, only: [:show, :edit, :update, :destroy]

  # GET /fotoperiodos
  # GET /fotoperiodos.json
  def index
    @fotoperiodos = Fotoperiodo.all
  end

  # GET /fotoperiodos/1
  # GET /fotoperiodos/1.json
  def show
  end

  # GET /fotoperiodos/new
  def new
    @fotoperiodo = Fotoperiodo.new
  end

  # GET /fotoperiodos/1/edit
  def edit
  end

  # POST /fotoperiodos
  # POST /fotoperiodos.json
  def create
    @fotoperiodo = Fotoperiodo.new(fotoperiodo_params)

    respond_to do |format|
      if @fotoperiodo.save
        format.html { redirect_to @fotoperiodo, notice: 'Fotoperiodo was successfully created.' }
        format.json { render :show, status: :created, location: @fotoperiodo }
      else
        format.html { render :new }
        format.json { render json: @fotoperiodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotoperiodos/1
  # PATCH/PUT /fotoperiodos/1.json
  def update
    respond_to do |format|
      if @fotoperiodo.update(fotoperiodo_params)
        format.html { redirect_to @fotoperiodo, notice: 'Fotoperiodo was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotoperiodo }
      else
        format.html { render :edit }
        format.json { render json: @fotoperiodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotoperiodos/1
  # DELETE /fotoperiodos/1.json
  def destroy
    @fotoperiodo.destroy
    respond_to do |format|
      format.html { redirect_to fotoperiodos_url, notice: 'Fotoperiodo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotoperiodo
      @fotoperiodo = Fotoperiodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotoperiodo_params
      params.require(:fotoperiodo).permit(:descricao, :horas)
    end
end
