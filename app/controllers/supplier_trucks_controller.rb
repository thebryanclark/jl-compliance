class SupplierTrucksController < ApplicationController 
  def index
    @supplier_trucks = SupplierTruck.where(job_id: params[:job_id])
    @back_target = job_path(params[:job_id])
    @title = 'Suppliers'
  end
end
