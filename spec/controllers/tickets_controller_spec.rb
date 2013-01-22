require 'spec_helper'

describe TicketsController do
  describe '#show' do
    it 'is not broken' do
      ticket = create(:ticket)
      get :show, id: ticket.id
      response.should be_success
    end
  end
end