class SubcontractorTrucksController < ApplicationController 
  def index
    @subcontractor_trucks = SubcontractorTruck.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
    @title = "Truckers"
  end

  def show
    @subcontractor_truck = SubcontractorTruck.where(id: params[:id]).first
    @title = @subcontractor_truck.driver_name.presence || @subcontractor_truck.plate
    @back_target = job_subcontractor_trucks_path(@subcontractor_truck.job) 
  end
end