
class Restaurant < ApplicationRecord
  VALID_CATEGORYS = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: VALID_CATEGORYS }
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
