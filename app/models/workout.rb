class Workout < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :workout_type, presence: true
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
  validates :intensity, inclusion: { in: %w[low medium high] }
  validates :instructions, presence: true

  # Associations
  belongs_to :fitness_goal
end
