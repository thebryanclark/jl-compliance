class SubcontractorTrucksController < ApplicationController 
  def index
    @subcontractor_trucks = SubcontractorAtJob.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
  end

  def show

  end
end