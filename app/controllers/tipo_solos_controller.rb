class TipoSolosController < ApplicationController
  before_action :set_tipo_solo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_solos
  # GET /tipo_solos.json
  def index
    @tipo_solos = TipoSolo.all
  end

  # GET /tipo_solos/1
  # GET /tipo_solos/1.json
  def show
  end

  # GET /tipo_solos/new
  def new
    @tipo_solo = TipoSolo.new
  end

  # GET /tipo_solos/1/edit
  def edit
  end

  # POST /tipo_solos
  # POST /tipo_solos.json
  def create
    @tipo_solo = TipoSolo.new(tipo_solo_params)

    respond_to do |format|
      if @tipo_solo.save
        format.html { redirect_to @tipo_solo, notice: 'Tipo solo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_solo }
      else
        format.html { render :new }
        format.json { render json: @tipo_solo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_solos/1
  # PATCH/PUT /tipo_solos/1.json
  def update
    respond_to do |format|
      if @tipo_solo.update(tipo_solo_params)
        format.html { redirect_to @tipo_solo, notice: 'Tipo solo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_solo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_solo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_solos/1
  # DELETE /tipo_solos/1.json
  def destroy
    @tipo_solo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_solos_url, notice: 'Tipo solo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_solo
      @tipo_solo = TipoSolo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_solo_params
      params.require(:tipo_solo).permit(:descricao)
    end
end
