class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  # GET /workouts/recommendations
  def recommendations
    user = User.find(params[:user_id])
    puts "User Data: #{user.inspect}"  # Debugging output
    service = WorkoutRecommendationService.new(user)
    recommended_workouts = service.recommend_workouts

    render json: recommended_workouts
  end

  # New action to get available workouts
  def available_workouts
    user = User.find(params[:user_id])
    service = WorkoutRecommendationService.new(user)
    workouts = service.available_workouts

    render json: workouts  # Return the list of available workouts as JSON
  end

  # New action to improve workout plans based on user workout history
  def improve_workout_plan
    user = User.find(params[:user_id])
    service = WorkoutRecommendationService.new(user)
    improved_plan = service.improve_workout_plan

    render json: improved_plan  # Return the improved workout plan as JSON
  end
end
