class Message < ApplicationRecord
  validates :body, presence: true, length: {maximum: 300}
  validates :user_id, presence: true
  belongs_to :user, foreign_key: :user_id
  scope :custom_display, -> { order(:created_at).last(20) }
end
