module AcquireItAPI
  def self.attempt_payment(params)
    HTTParty.get("#{ENV["ACQUIRE_IT_API_URL"]}/attempt_payment")
  end
end
