require 'spec_helper'

describe SupplierTrucksController do
  describe '#index' do
    it 'is not broken' do
      job = create(:job)
      get :index, job_id: job.id
      response.should be_success
    end
  end

  describe '#show' do
    it 'is not broken' do
      supplier_truck = create(:supplier_truck)
      get :show, id: supplier_truck.id
      response.should be_success
    end
  end
end