class UserWorkoutHistory < ApplicationRecord
  # Validations
  validates :user_id, presence: true
  validates :workout_id, presence: true
  validates :completed_at, presence: true

  # Associations
  belongs_to :user
  belongs_to :workout
end
