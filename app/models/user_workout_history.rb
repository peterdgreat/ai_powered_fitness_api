class UserWorkoutHistory < ApplicationRecord
  # Validations
  validates :user_id, presence: true
  validates :workout_id, presence: true
  validates :completed_at, presence: true

  # Associations
  belongs_to :user
  belongs_to :workout

  # Callback to improve workout plan after a new history is created
  after_create :improve_user_workout_plan

  private

  def improve_user_workout_plan
    user.workout_recommendation_service.improve_workout_plan
  end
end
