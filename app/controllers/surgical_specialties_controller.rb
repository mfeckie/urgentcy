class SurgicalSpecialtiesController < InheritedResources::Base
  respond_to :html, :json
  private

  def resource_params
    return [] if request.get?
    [ params.require(:surgical_specialty).permit! ]
  end
end
