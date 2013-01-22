require 'spec_helper'

describe JobsController do
  describe '#index' do
    it 'is not broken' do
      get :index
      response.should be_success
    end
  end

  describe '#show' do
    it 'is not broken' do
      job = Job.create!(name: 'test job')
      get :show, id: job.id
      response.should be_success
    end
  end
end