class FitnessGoal < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true

  # Associations
  belongs_to :user
  has_many :workouts
end
