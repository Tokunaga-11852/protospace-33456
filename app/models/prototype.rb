class Prototype < ApplicationRecord
  validates :concept, presence: true
  validates :catch_copy, presence: true
  validates :title, presence: true
  validates :image, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  # validates :form, presence: true

end


# foreign_key: :user_id,
# foreign_key: :comments_id,