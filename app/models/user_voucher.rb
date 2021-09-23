# frozen_string_literal: true

class UserVoucher < ApplicationRecord
  belongs_to :user
  belongs_to :voucher
end
