require "rails_helper"

RSpec.describe PaymentsController, type: :routing do

  describe "routing" do
    it "routes to #attempt_payment" do
      expect(:get => "/payments/attempt_payment").to route_to("payments#attempt_payment")
    end
  end

end
