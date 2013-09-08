require 'spec_helper'

describe 'Routing' do
  describe 'url based routing' do
    it 'routes to home page' do
      expect(get: '/').to route_to(controller: 'static_pages', action: 'home')
    end

    it 'routes to help page' do
      expect(get: '/static_pages/help').to route_to(controller: 'static_pages', action: 'help')
    end

  end


  describe 'named routes' do
    it 'routes to home' do
      {get: home_page_path}.should route_to(controller: 'static_pages', action: 'home')
    end

    it 'routes to help' do
      expect(get: help_page_path).to route_to(controller: 'static_pages', action: 'help')
    end
  end

end