class Budget < ApplicationRecord
  monetize :amount_cents

  belongs_to :user, optional: false
  belongs_to :category, optional: false

  validates :name, presence: true
end
