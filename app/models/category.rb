class Category < ApplicationRecord
  belongs_to :user
  has_many :budgets

  validates :name, presence: true
  validates :user_id, presence: true

  def recent_budgets
    budgets.order(created_at: :DESC)
  end
end
