require 'rumale'

class WorkoutRecommendationService
  def initialize(user)
    @user = user
    @model = Rumale::LinearModel::LogisticRegression.new
    @data, @labels, @label_map = prepare_data  # Update to include label_map
    train_model
  end

  def recommend_workouts
    user_data = prepare_user_data
    puts "User Data for Prediction: #{user_data.inspect}"  # Debugging output
    prediction = @model.predict(user_data)
    puts "Prediction: #{prediction.inspect}"  # Debugging output

    predicted_index = prediction[0]  # Get the first element of the prediction
    workout_name = @label_map.key(predicted_index)  # Find the workout name by index

    puts "Workout Name: #{workout_name.inspect}"  # Debugging output
    puts "User Details: Age: #{@user.age}, Gender: #{@user.gender}, Fitness Level: #{@user.fitness_level}, Goals: #{@user.goals}"  # Log user details
    [workout_name]  # Return as an array
  end

  # New method to get available workouts
  def available_workouts
    WorkoutData.dataset.map { |data| data[:workout] }.uniq  # Return unique workout names
  end

  # New method to improve workout plans based on user workout history
  def improve_workout_plan
    workout_histories = @user.user_workout_histories.includes(:workout)

    # Analyze workout history to identify trends
    trends = analyze_workout_histories(workout_histories)

    # Generate a new workout plan based on trends
    new_workout_plan = generate_workout_plan_based_on_trends(trends)

    new_workout_plan
  end

  private

  def prepare_data
    dataset = WorkoutData.dataset
    features = dataset.map do |data|
      [
        data[:age],
        encode_gender(data[:gender]),
        encode_fitness_level(data[:fitness_level]),
        encode_goal(data[:goal])
      ]
    end

    labels = dataset.map { |data| data[:workout] }
    encoded_labels, label_map = encode_labels(labels)  # Encode labels to integers and get the map
    [features, encoded_labels, label_map]  # Return features, encoded labels, and label map
  end

  def encode_labels(labels)
    unique_labels = labels.uniq
    label_map = unique_labels.each_with_index.to_h
    encoded_labels = labels.map { |label| label_map[label] }
    puts "Label Map: #{label_map.inspect}"  # Debugging output
    [encoded_labels, label_map]  # Return both encoded labels and the mapping
  end

  def train_model
    puts "Training Data: #{@data.inspect}"  # Log training data
    puts "Training Labels: #{@labels.inspect}"  # Log training labels
    @model.fit(@data, @labels)
  end

  def prepare_user_data
    [
      [
        @user.age,
        encode_gender(@user.gender),
        encode_fitness_level(@user.fitness_level),
        encode_goal(@user.goals)
      ]
    ]
  end

  def encode_gender(gender)
    case gender
    when 'male' then 0
    when 'female' then 1
    when 'other' then 2
    else 3  # Handle unexpected values
    end
  end

  def encode_fitness_level(level)
    case level
    when 'beginner' then 0
    when 'intermediate' then 1
    when 'advanced' then 2
    else 3  # Handle unexpected values
    end
  end

  def encode_goal(goal)
    case goal
    when 'weight loss' then 0
    when 'muscle gain' then 1
    when 'endurance' then 2
    else 3  # Handle unexpected values
    end
  end

  def analyze_workout_histories(histories)
    # Analyze the user's workout history to identify patterns
    workout_types = histories.joins(:workout).group(:workout_type).count
    workout_summary = workout_types.transform_values do |count|
      {
        count: count,
        average_duration: histories.where(workout_type: count).average(:duration) || 0
      }
    end

    workout_summary
  end

  def generate_workout_plan_based_on_trends(trends)
    # Generate a new workout plan based on the identified trends
    # For example, if the user has been doing a lot of strength training, suggest more variety
    if trends['Strength'] && trends['Strength'][:count] > 5
      # Suggest a different workout type if the user has been focusing too much on strength
      return available_workouts.select { |workout| workout[:workout_type] != 'Strength' }
    else
      # Otherwise, suggest a balanced workout plan
      return available_workouts
    end
  end
end
