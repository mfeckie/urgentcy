class SurgicalSpecialtiesController < ApplicationController
  before_action :set_surgical_specialty, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /surgical_specialties
  # GET /surgical_specialties.json
  def index
    @surgical_specialties = SurgicalSpecialty.all
  end

  # GET /surgical_specialties/1
  # GET /surgical_specialties/1.json
  def show
  end

  # GET /surgical_specialties/new
  def new
    @surgical_specialty = SurgicalSpecialty.new
  end

  # GET /surgical_specialties/1/edit
  def edit
  end

  # POST /surgical_specialties
  # POST /surgical_specialties.json
  def create
    @surgical_specialty = SurgicalSpecialty.new(surgical_specialty_params)

    respond_to do |format|
      if @surgical_specialty.save
        format.html { redirect_to @surgical_specialty, notice: 'Surgical specialty was successfully created.' }
        format.json { render action: 'show', status: :created, location: @surgical_specialty }
      else
        format.html { render action: 'new' }
        format.json { render json: @surgical_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgical_specialties/1
  # PATCH/PUT /surgical_specialties/1.json
  def update
    respond_to do |format|
      if @surgical_specialty.update(surgical_specialty_params)
        format.html { redirect_to @surgical_specialty, notice: 'Surgical specialty was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @surgical_specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgical_specialties/1
  # DELETE /surgical_specialties/1.json
  def destroy
    @surgical_specialty.destroy
    respond_to do |format|
      format.html { redirect_to surgical_specialties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgical_specialty
      @surgical_specialty = SurgicalSpecialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgical_specialty_params
      params.require(:surgical_specialty).permit(:name)
    end
end
