require 'spec_helper'

describe UrgencyCategoriesController do
  describe 'routing' do
    it 'routes to #index' do
      get('/urgency_categories').should route_to('urgency_categories#index')
    end
  end
end