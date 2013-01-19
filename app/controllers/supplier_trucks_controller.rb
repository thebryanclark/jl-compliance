class SupplierTrucksController < ApplicationController 
  def index
    @supplier_trucks = SupplierTruck.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
  end

  def show
    @supplier_truck = SupplierTruck.find(params[:id])
    @title = @supplier_truck.name
    @back_target = job_supplier_trucks_path(@supplier_truck.job)
  end
end
