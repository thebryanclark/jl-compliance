require 'spec_helper'

describe SubcontractorAtJobsController do
  describe '#index' do
    it 'is not broken' do
      job = create(:job)
      get :index, job_id: job.id
      response.should be_success
    end
  end

  describe '#show' do
    it 'is not broken' do
      subcontractor_at_job = create(:subcontractor_at_job)
      get :show, id: subcontractor_at_job.id
      response.should be_success
    end
  end
end