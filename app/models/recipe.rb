class Recipe < ApplicationRecord
  # Extend
  extend FriendlyId

  # Associations
  belongs_to :author, class_name: 'User'

  # Slug
  friendly_id :name, use: :slugged

  # Validations
  validates :name, presence: true, length: { maximum: 50 }
  validates :level, presence: true, numericality: { only_integer: true, less_than_or_equal_to: 5 }
  validates :cook_time, presence: true, numericality: { only_integer: true }
  validates :ingredients, presence: true
  validates :instructions, presence: true
end
