class Category < ApplicationRecord
  belongs_to :user
  has_many :budgets

  def recent_budgets
    budgets.order(created_at: :DESC)
  end
end
