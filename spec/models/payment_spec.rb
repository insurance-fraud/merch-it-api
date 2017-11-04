require 'rails_helper'

RSpec.describe Payment, type: :model do
  it { is_expected.to have_db_column(:payment_url).of_type(:string) }
  it { is_expected.to have_db_column(:payment_id).of_type(:integer) }
  it { is_expected.to have_db_column(:email).of_type(:string) }
  it { is_expected.to have_db_column(:amount).of_type(:float) }
  it { is_expected.to have_db_column(:order_id).of_type(:integer) }
  it { is_expected.to have_db_column(:order_timestamp).of_type(:datetime) }
end
