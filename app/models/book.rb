class Book < ApplicationRecord
  # 画像を持たす設定
  has_one_attached :image
  # リレーション
  belongs_to :user
end
