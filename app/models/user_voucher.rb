class UserVoucher < ApplicationRecord
  belongs_to :user_id
  belongs_to :voucher_id
end
