# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, presence: true
  validates :points_earned, presence: true, numericality: { only_integer: true }
  validates :username, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role
  has_many :reservations, dependent: :destroy
  has_many :user_vouchers, dependent: :destroy
end
