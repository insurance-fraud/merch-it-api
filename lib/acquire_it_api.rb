module AcquireItAPI
  ACQUIRE_IT_API_URL =
    ENV["ACQUIRE_IT_API_URL"] || "http://localhost:4001"

  def self.attempt_payment(params)
    payment = { :payment => params }

    Rails.logger.info payment

    HTTParty.post(
      "#{ACQUIRE_IT_API_URL}/payments/attempt_payment",
      :body => payment,
      :timeout => 2
    )
  end
end
