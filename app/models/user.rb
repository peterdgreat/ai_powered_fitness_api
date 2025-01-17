class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations
  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
  validates :gender, inclusion: { in: %w[male female other] }
  validates :fitness_level, inclusion: { in: %w[beginner intermediate advanced] }
  validates :goals, presence: true
  validates :height, numericality: { greater_than: 0 }, allow_nil: true
  validates :weight, numericality: { greater_than: 0 }, allow_nil: true

  # Associations
  has_many :fitness_goals
  has_many :user_workout_histories

  # Method to get the workout recommendation service
  def workout_recommendation_service
    WorkoutRecommendationService.new(self)
  end
end
