class PatientsController < InheritedResources::Base
  respond_to :html, :json

  private

  def resource_params
    return [] if request.get?
    [ params.require(:patient).permit! ]
  end

end