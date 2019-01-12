class Payment < ApplicationRecord
  MERCHANT_ID = ENV["MERCHANT_ID"] || 1
  MERCHANT_PASSWORD = ENV["MERCHANT_PASSWORD"] || 'strongpassword'
end
