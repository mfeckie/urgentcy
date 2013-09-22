class PatientsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :html, :json

  def search
    if params[:mrn]
      @patients = Patient.where(mrn: params[:mrn])
    elsif params[:last_name]
      @patients = Patient.where(last_name: params[:last_name])
    elsif params[:first_name]
      @patients = Patient.where(first_name: params[:first_name])
    else
      @patients = Patient.all
    end
    respond_with @patients
  end

  private


  def resource_params
    return [] if request.get?
    [params.require(:patient).permit!]
  end

end