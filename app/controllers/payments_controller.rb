class PaymentsController < ApplicationController
  # GET /payments
  def attempt_payment
    payment = Payment.create(amount: payment_params[:amount],
                             email: payment_params[:email],
                             order_id: SecureRandom.hex(10),
                             order_timestamp: DateTime.now)

    # contact acquire-it-api
    resp = AcquireItAPI.attempt_payment(merchant_id: Payment::MERCHANT_ID,
                                          merchant_password: Payment::MERCHANT_PASSWORD,
                                          amount: payment.amount,
                                          email: payment.email,
                                          order_id: payment.order_id,
                                          order_timestamp: payment.order_timestamp,
                                          error_url: error_url)

    if resp.code == 200
      body = JSON.parse resp.body

      payment.update_attributes(payment_url: body[:payment_url],
                                payment_id: body[:payment_id])

      render json: { payment_url: payment.payment_url, payment_id: payment.payment_id }
    else
      redirect_to error_url and return
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def payment_params
    params.require(:payment).permit(:payment_url, :payment_id, :amount, :email)
  end

  def error_url
    "#{ENV["MERCH_IT_URL"]}/error"
  end
end
