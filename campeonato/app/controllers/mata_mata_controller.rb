class MataMataController < ApplicationController
  before_action :set_mata_matum, only: [:show, :edit, :update, :destroy]

  # GET /mata_mata
  # GET /mata_mata.json
  def index
    @mata_mata = MataMatum.all
  end

  # GET /mata_mata/1
  # GET /mata_mata/1.json
  def show
  end

  # GET /mata_mata/new
  def new
    @mata_matum = MataMatum.new
  end

  # GET /mata_mata/1/edit
  def edit
  end

  # POST /mata_mata
  # POST /mata_mata.json
  def create
    @mata_matum = MataMatum.new(mata_matum_params)

    respond_to do |format|
      if @mata_matum.save
        format.html { redirect_to @mata_matum, notice: 'Mata matum was successfully created.' }
        format.json { render :show, status: :created, location: @mata_matum }
      else
        format.html { render :new }
        format.json { render json: @mata_matum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mata_mata/1
  # PATCH/PUT /mata_mata/1.json
  def update
    respond_to do |format|
      if @mata_matum.update(mata_matum_params)
        format.html { redirect_to @mata_matum, notice: 'Mata matum was successfully updated.' }
        format.json { render :show, status: :ok, location: @mata_matum }
      else
        format.html { render :edit }
        format.json { render json: @mata_matum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mata_mata/1
  # DELETE /mata_mata/1.json
  def destroy
    @mata_matum.destroy
    respond_to do |format|
      format.html { redirect_to mata_mata_url, notice: 'Mata matum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mata_matum
      @mata_matum = MataMatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mata_matum_params
      params.require(:mata_matum).permit(:nome_camp, :modalidade, :competidores)
    end
end
