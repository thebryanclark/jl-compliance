class SubcontractorsController < ApplicationController
  def index
    @subcontractors = Subcontractor.where(job_id: params[:job_id])
    @title = "Subcontractors"
  end
end