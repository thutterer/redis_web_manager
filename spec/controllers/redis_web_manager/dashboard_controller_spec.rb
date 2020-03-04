# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RedisWebManager::DashboardController, type: :controller do
  routes { RedisWebManager::Engine.routes }

  let(:default) do
    RedisWebManager.redises.keys[0]
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, instance: default.to_s
      expect(response).to be_successful
    end
  end
end
