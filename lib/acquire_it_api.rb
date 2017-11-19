module AcquireItAPI
  def self.attempt_payment(params)
    HTTParty.get("https://#{acquire_it_api_url}/attempt_payment", params)
  end

  def self.acquire_it_api_url
    ENV["ACQUIRE_IT_API_URL"] || "localhost:3000"
  end
end
