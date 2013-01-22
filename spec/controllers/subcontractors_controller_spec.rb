require 'spec_helper'

describe SubcontractorsController do
  describe '#index' do
    it 'is not broken' do
      job = create(:job)
      get :index, job_id: job.id
      response.should be_success
    end
  end

  describe '#show' do
    it 'is not broken' do
      subcontractor = create(:subcontractor)
      get :show, id: subcontractor.id
      response.should be_success
    end
  end
end