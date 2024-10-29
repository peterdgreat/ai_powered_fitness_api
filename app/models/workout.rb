class Workout < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :workout_type, presence: true
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
  validates :intensity, inclusion: { in: %w[low medium high] }
  validates :instructions, presence: true
  validates :days, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :hours, numericality: { greater_than: 0 }, allow_nil: true

  # Associations
  belongs_to :fitness_goal
  has_many :user_workout_histories
end
