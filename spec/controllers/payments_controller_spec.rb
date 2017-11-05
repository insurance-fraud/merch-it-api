require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe PaymentsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Payment. As you add validations to Payment, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PaymentsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #attempt_payment" do
    before do
      get :attempt_payment,
          params: { payment: {
            email: "test@example.com",
            amount: 10000.00 }
          },
          session: valid_session
    end

    it "returns a success response" do
      expect(response).to be_success
    end

    it "creates Payment with proper email" do
      payment = Payment.last

      expect(payment.email).to eq("test@example.com")
    end

    it "creates Payment with proper amount" do
      payment = Payment.last

      expect(payment.amount).to eq(10000.00)
    end

    it "creates Payment with order_id" do
      payment = Payment.last

      expect(payment.order_id).to be_a_kind_of(Integer)
    end

    it "creates Payment with order_timestmap" do
      payment = Payment.last

      expect(payment.order_timestamp).to be_within(1.second).of(DateTime.now)
    end
  end
end