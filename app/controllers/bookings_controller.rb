class BookingsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :html, :json

  private

  def resource_params
    return [] if request.get?
    [ params.require(:patient).permit! ]
  end
end
