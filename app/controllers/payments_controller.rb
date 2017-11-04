class PaymentsController < ApplicationController
  # GET /payments
  def attempt_payment
    payment = Payment.create(:amount => payment_params[:amount],
                             :email => payment_params[:email],
                             :order_id => SecureRandom.hex(10),
                             :order_timestamp => DateTime.now)

    # contact acquire-it-api

    render :ok
  end

  private
  # Only allow a trusted parameter "white list" through.
  def payment_params
    params.require(:payment).permit(:payment_url, :payment_id, :amount, :email, :order_id)
  end
end
