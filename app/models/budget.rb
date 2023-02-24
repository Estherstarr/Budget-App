class Budget < ApplicationRecord
  monetize :amount_cents

  belongs_to :user
  belongs_to :category
end
