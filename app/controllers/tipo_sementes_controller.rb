class TipoSementesController < ApplicationController
  before_action :set_tipo_semente, only: [:show, :edit, :update, :destroy]

  # GET /tipo_sementes
  # GET /tipo_sementes.json
  def index
    @tipo_sementes = TipoSemente.all
  end

  # GET /tipo_sementes/1
  # GET /tipo_sementes/1.json
  def show
  end

  # GET /tipo_sementes/new
  def new
    @tipo_semente = TipoSemente.new
  end

  # GET /tipo_sementes/1/edit
  def edit
  end

  # POST /tipo_sementes
  # POST /tipo_sementes.json
  def create
    @tipo_semente = TipoSemente.new(tipo_semente_params)

    respond_to do |format|
      if @tipo_semente.save
        format.html { redirect_to @tipo_semente, notice: 'Tipo semente was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_semente }
      else
        format.html { render :new }
        format.json { render json: @tipo_semente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_sementes/1
  # PATCH/PUT /tipo_sementes/1.json
  def update
    respond_to do |format|
      if @tipo_semente.update(tipo_semente_params)
        format.html { redirect_to @tipo_semente, notice: 'Tipo semente was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_semente }
      else
        format.html { render :edit }
        format.json { render json: @tipo_semente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_sementes/1
  # DELETE /tipo_sementes/1.json
  def destroy
    @tipo_semente.destroy
    respond_to do |format|
      format.html { redirect_to tipo_sementes_url, notice: 'Tipo semente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_semente
      @tipo_semente = TipoSemente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_semente_params
      params.require(:tipo_semente).permit(:descricao)
    end
end
