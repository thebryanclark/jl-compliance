class SubcontractorsController < ApplicationController
  def index
    @subcontractors = Subcontractor.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
  end

  def show
    @subcontractor = Subcontractor.find(params[:id])
    @title = @subcontractor.name
    @back_target = "/jobs/#{@subcontractor.job_id}/subcontractors"
  end
end