require 'spec_helper'

describe SubcontractorTrucksController do
  describe '#index' do
    it 'is not broken' do
      job = create(:job)
      get :index, job_id: job.id
      response.should be_success
    end
  end

  describe '#show' do
    it 'is not broken' do
      subcontractor_truck = create(:subcontractor_truck)
      get :show, id: subcontractor_truck.id
      response.should be_success
    end
  end
end