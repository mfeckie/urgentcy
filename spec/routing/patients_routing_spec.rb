require 'spec_helper'

describe 'PatientsController' do
  describe 'search route' do
      it 'routes patients_search?mrn=123' do
        expect(get: '/patients_search?mrn=123').to route_to(controller: 'patients', action: 'search', mrn: '123', format: :json)
      end
    it 'routes patients_search?last_name=smith' do
        expect(get: '/patients_search?last_name=smith').to route_to(controller: 'patients', action: 'search', last_name: 'smith', format: :json)
      end

  end
end