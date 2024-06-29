class Account < ApplicationRecord
  belongs_to :user

  validates :nomeConta, presence: true
end