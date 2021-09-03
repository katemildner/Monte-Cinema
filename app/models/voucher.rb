class Voucher < ApplicationRecord
  has_many :user_vouchers, dependent: :destroy
end
