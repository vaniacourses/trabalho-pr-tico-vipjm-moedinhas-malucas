class Transacao < ApplicationRecord
  belongs_to :cliente
  belongs_to :account
end
