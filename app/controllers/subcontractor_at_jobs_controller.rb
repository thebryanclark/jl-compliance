class SubcontractorAtJobsController < ApplicationController
  def index
    @subcontractor_at_jobs = SubcontractorAtJob.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
    @title = "Subcontractors"
  end

  def show
    @subcontractor_at_job = SubcontractorAtJob.find(params[:id])
    @title = @subcontractor_at_job.subcontractor.name
    @back_target = job_subcontractor_at_jobs_path(@subcontractor_at_job.job)
  end
end