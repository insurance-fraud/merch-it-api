module AcquireItAPI
  def self.attempt_payment(params)
    payment = { :payment => params }

    Rails.logger.info payment

    HTTParty.post(
      "#{acquire_it_api_url}/payments/attempt_payment",
      :body => payment,
      :timeout => 2
    )
  end

  def self.acquire_it_api_url
    ENV["ACQUIRE_IT_API_URL"] || "http://localhost:4001"
  end
end
