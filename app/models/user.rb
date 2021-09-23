# frozen_string_literal: true

class User < ApplicationRecord
	# Include default devise modules.
	devise 	:database_authenticatable, :registerable,
					:recoverable, :rememberable, :validatable,
					:omniauthable
	include DeviseTokenAuth::Concerns::User
  validates :email, presence: true
  validates :points_earned, presence: true, numericality: { only_integer: true }
  validates :username, presence: true

  belongs_to :role
  has_many :reservations, dependent: :destroy
  has_many :user_vouchers, dependent: :destroy
end
