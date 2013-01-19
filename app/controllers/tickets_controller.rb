class TicketsController < ApplicationController
  def show
    @ticket = Ticket.find(params[:id])
    @back_target = supplier_truck_path(@ticket.supplier_truck)
  end
end