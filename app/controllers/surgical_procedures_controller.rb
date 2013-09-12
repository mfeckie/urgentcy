class SurgicalProceduresController < InheritedResources::Base
  respond_to :html, :json
  private

  def resource_params
    return [] if request.get?
    [ params.require(:surgical_procedure).permit! ]
  end
end
