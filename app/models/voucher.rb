class Voucher < ApplicationRecord
  validates :code, presence: true
  validates :expiration_date, presence: true
  validates :points_required, presence: true, numericality: { only_integer: true }
  validates :reward, presence: true

  has_many :user_vouchers, dependent: :destroy
end
