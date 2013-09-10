class SurgicalProceduresController < InheritedResources::Base
  before_action :set_surgical_procedure, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /surgical_procedures
  # GET /surgical_procedures.json
  def index
    @surgical_procedures = SurgicalProcedure.all
  end

  # GET /surgical_procedures/1
  # GET /surgical_procedures/1.json
  def show
  end

  # GET /surgical_procedures/new
  def new
    @surgical_procedure = SurgicalProcedure.new
  end

  # GET /surgical_procedures/1/edit
  def edit
  end

  # POST /surgical_procedures
  # POST /surgical_procedures.json
  def create
    @surgical_procedure = SurgicalProcedure.new(surgical_procedure_params)

    respond_to do |format|
      if @surgical_procedure.save
        format.html { redirect_to @surgical_procedure, notice: 'Surgical procedure was successfully created.' }
        format.json { render action: 'show', status: :created, location: @surgical_procedure }
      else
        format.html { render action: 'new' }
        format.json { render json: @surgical_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgical_procedures/1
  # PATCH/PUT /surgical_procedures/1.json
  def update
    respond_to do |format|
      if @surgical_procedure.update(surgical_procedure_params)
        format.html { redirect_to @surgical_procedure, notice: 'Surgical procedure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @surgical_procedure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgical_procedures/1
  # DELETE /surgical_procedures/1.json
  def destroy
    @surgical_procedure.destroy
    respond_to do |format|
      format.html { redirect_to surgical_procedures_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_surgical_procedure
    @surgical_procedure = SurgicalProcedure.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def surgical_procedure_params
    params.require(:surgical_procedure).permit(:name)
  end
end
