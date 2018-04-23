module AcquireItAPI
  def self.attempt_payment(params)
    HTTParty.get("#{acquire_it_api_url}/attempt_payment", params)
  end

  def self.acquire_it_api_url
    ENV["ACQUIRE_IT_API_URL"] || "http://172.18.0.1:4001"
  end
end
