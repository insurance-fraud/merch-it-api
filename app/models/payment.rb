class Payment < ApplicationRecord
  MERCHANT_ID = ENV["MERCHANT_ID"]
  MERCHANT_PASSWORD = ENV["MERCHANT_PASSWORD"]
end
