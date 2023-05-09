class Book < ApplicationRecord
  # 画像を持たす設定
  has_one_attached :image
  # リレーション
  belongs_to :user
  
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}
end
