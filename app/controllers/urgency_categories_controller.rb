class UrgencyCategoriesController < InheritedResources::Base
  respond_to :html, :json
  private

  def resource_params
    return [] if request.get?
    [ params.require(:urgency_category).permit! ]
  end

  def build_resource_params
    [params.require(:urgency_category)]
  end

end
