class Category < ApplicationRecord
  belongs_to :user
  has_many :budgets, dependent: :destroy

  validates :name, presence: true
  validates :user_id, presence: true

  def recent_budgets
    budgets.order(created_at: :DESC)
  end
end
