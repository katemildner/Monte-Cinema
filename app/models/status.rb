class Status < ApplicationRecord
  validates :status_name, presence: true
end
