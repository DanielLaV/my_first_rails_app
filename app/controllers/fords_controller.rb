class FordsController < ApplicationController
  before_action :set_ford, only: [:show, :edit, :update, :destroy]

  # GET /fords
  # GET /fords.json
  def index
    @fords = Ford.all
  end

  # GET /fords/1
  # GET /fords/1.json
  def show
  end

  # GET /fords/new
  def new
    @ford = Ford.new
  end

  # GET /fords/1/edit
  def edit
  end

  # POST /fords
  # POST /fords.json
  def create
    @ford = Ford.new(ford_params)

    respond_to do |format|
      if @ford.save
        format.html { redirect_to @ford, notice: 'Ford was successfully created.' }
        format.json { render :show, status: :created, location: @ford }
      else
        format.html { render :new }
        format.json { render json: @ford.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fords/1
  # PATCH/PUT /fords/1.json
  def update
    respond_to do |format|
      if @ford.update(ford_params)
        format.html { redirect_to @ford, notice: 'Ford was successfully updated.' }
        format.json { render :show, status: :ok, location: @ford }
      else
        format.html { render :edit }
        format.json { render json: @ford.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fords/1
  # DELETE /fords/1.json
  def destroy
    @ford.destroy
    respond_to do |format|
      format.html { redirect_to fords_url, notice: 'Ford was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ford
      @ford = Ford.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ford_params
      params.require(:ford).permit(:make, :model, :year)
    end
end
