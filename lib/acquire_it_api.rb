module AcquireItAPI
  def self.attempt_payment(params)
    payment = { :payment => params }

    Rails.logger.info payment

    HTTParty.post(
      "#{acquire_it_api_url}/payments/attempt_payment",
      :body => payment
    )
  end

  def self.acquire_it_api_url
    ENV["ACQUIRE_IT_API_URL"] || "http://172.18.0.1:4001"
  end
end
