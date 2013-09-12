class MedicalConditionsController < InheritedResources::Base
  respond_to :html, :json

  private

  def resource_params
    return [] if request.get?
    [ params.require(:medical_condition).permit! ]
  end

end