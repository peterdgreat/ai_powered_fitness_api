class WorkoutData
  def self.dataset
    [
      {
        age: 25,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'weight loss',
        workout: 'Beginner Yoga',
        workout_type: 'Yoga',
        days: 3,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of gentle stretching',
          'Yoga poses: 30 mins focusing on flexibility',
          'Cool down: 20 mins of meditation'
        ]
      },
      {
        age: 30,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'muscle gain',
        workout: '30-minute HIIT workout',
        workout_type: 'HIIT',
        days: 5,
        hours: 0.5,
        height: 165,
        weight: 60,
        daily_instructions: [
          'Warm-up: 5 mins of jumping jacks',
          'HIIT circuit: 20 mins alternating between burpees, squats, and push-ups',
          'Cool down: 5 mins of stretching'
        ]
      },
      {
        age: 45,
        gender: 'male',
        fitness_level: 'advanced',
        goal: 'endurance',
        workout: 'Marathon training run',
        workout_type: 'Running',
        days: 6,
        hours: 2,
        height: 180,
        weight: 80,
        daily_instructions: [
          'Long run: 90 mins at a steady pace',
          'Interval training: 30 mins of sprinting and walking',
          'Strength training: 30 mins focusing on legs and core'
        ]
      },
      {
        age: 22,
        gender: 'female',
        fitness_level: 'beginner',
        goal: 'weight loss',
        workout: 'Zumba Class',
        workout_type: 'Dance',
        days: 2,
        hours: 1,
        height: 170,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of light dancing',
          'Zumba routine: 40 mins of high-energy dance',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 35,
        gender: 'male',
        fitness_level: 'intermediate',
        goal: 'muscle gain',
        workout: 'Weightlifting',
        workout_type: 'Strength',
        days: 4,
        hours: 1.5,
        height: 178,
        weight: 75,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Weightlifting: 60 mins focusing on compound lifts',
          'Cool down: 20 mins of stretching'
        ]
      },
      {
        age: 50,
        gender: 'female',
        fitness_level: 'advanced',
        goal: 'endurance',
        workout: 'Cycling for 1 hour',
        workout_type: 'Cycling',
        days: 5,
        hours: 1,
        height: 160,
        weight: 60,
        daily_instructions: [
          'Warm-up: 10 mins of easy cycling',
          'Cycling: 40 mins at a moderate pace',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 28,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'flexibility',
        workout: 'Pilates',
        workout_type: 'Pilates',
        days: 3,
        hours: 1,
        height: 180,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of gentle stretching',
          'Pilates core exercises: 30 mins',
          'Cool down: 20 mins of relaxation'
        ]
      },
      {
        age: 40,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'weight loss',
        workout: 'Kickboxing',
        workout_type: 'Martial Arts',
        days: 4,
        hours: 1,
        height: 165,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of jumping rope',
          'Kickboxing routine: 40 mins of punches and kicks',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 60,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'health',
        workout: 'Walking for 30 minutes',
        workout_type: 'Walking',
        days: 5,
        hours: 0.5,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Walk at a comfortable pace for 30 mins',
          'Cool down: 5 mins of stretching'
        ]
      },
      {
        age: 33,
        gender: 'female',
        fitness_level: 'advanced',
        goal: 'muscle gain',
        workout: 'CrossFit',
        workout_type: 'CrossFit',
        days: 5,
        hours: 1,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of dynamic stretching',
          'CrossFit WOD: 40 mins of high-intensity workouts',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 29,
        gender: 'male',
        fitness_level: 'intermediate',
        goal: 'endurance',
        workout: 'Running for 5 km',
        workout_type: 'Running',
        days: 3,
        hours: 1,
        height: 170,
        weight: 60,
        daily_instructions: [
          'Warm-up: 5 mins of light jogging',
          'Run 5 km at a steady pace',
          'Cool down: 10 mins of walking and stretching'
        ]
      },
      {
        age: 55,
        gender: 'female',
        fitness_level: 'beginner',
        goal: 'health',
        workout: 'Gentle Yoga',
        workout_type: 'Yoga',
        days: 2,
        hours: 1,
        height: 165,
        weight: 60,
        daily_instructions: [
          'Warm-up: 10 mins of deep breathing',
          'Gentle yoga poses: 40 mins focusing on relaxation',
          'Cool down: 10 mins of meditation'
        ]
      },
      {
        age: 38,
        gender: 'male',
        fitness_level: 'advanced',
        goal: 'weight loss',
        workout: 'High-Intensity Interval Training (HIIT)',
        workout_type: 'HIIT',
        days: 4,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 5 mins of jumping jacks',
          'HIIT circuit: 30 mins alternating between exercises',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 27,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'flexibility',
        workout: 'Dance Class',
        workout_type: 'Dance',
        days: 3,
        hours: 1,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of light dancing',
          'Dance routine: 40 mins of various styles',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 42,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'muscle gain',
        workout: 'Bodyweight Exercises',
        workout_type: 'Strength',
        days: 3,
        hours: 1,
        height: 170,
        weight: 60,
        daily_instructions: [
          'Warm-up: 10 mins of dynamic stretching',
          'Bodyweight circuit: 30 mins of push-ups, squats, and lunges',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 48,
        gender: 'female',
        fitness_level: 'advanced',
        goal: 'endurance',
        workout: 'Swimming for 1 hour',
        workout_type: 'Swimming',
        days: 4,
        hours: 1,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of easy swimming',
          'Swim laps: 40 mins at a moderate pace',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 31,
        gender: 'male',
        fitness_level: 'intermediate',
        goal: 'weight loss',
        workout: 'Circuit Training',
        workout_type: 'Strength',
        days: 4,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Circuit training: 30 mins of alternating exercises',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 36,
        gender: 'female',
        fitness_level: 'beginner',
        goal: 'health',
        workout: 'Walking for 20 minutes',
        workout_type: 'Walking',
        days: 5,
        hours: 0.5,
        height: 165,
        weight: 60,
        daily_instructions: [
          'Walk at a comfortable pace for 20 mins',
          'Cool down: 5 mins of stretching'
        ]
      },
      {
        age: 53,
        gender: 'male',
        fitness_level: 'advanced',
        goal: 'muscle gain',
        workout: 'Powerlifting',
        workout_type: 'Strength',
        days: 4,
        hours: 1.5,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Powerlifting: 60 mins focusing on heavy lifts',
          'Cool down: 20 mins of stretching'
        ]
      },
      {
        age: 24,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'endurance',
        workout: 'Trail Running',
        workout_type: 'Running',
        days: 3,
        hours: 1,
        height: 170,
        weight: 60,
        daily_instructions: [
          'Warm-up: 5 mins of light jogging',
          'Trail run: 30 mins at a steady pace',
          'Cool down: 10 mins of walking and stretching'
        ]
      },
      {
        age: 46,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'flexibility',
        workout: 'Stretching Routine',
        workout_type: 'Flexibility',
        days: 3,
        hours: 0.5,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Stretching routine: 30 mins focusing on all major muscle groups',
          'Cool down: 5 mins of deep breathing'
        ]
      },
      {
        age: 26,
        gender: 'female',
        fitness_level: 'beginner',
        goal: 'weight loss',
        workout: 'Beginner Pilates',
        workout_type: 'Pilates',
        days: 3,
        hours: 1,
        height: 165,
        weight: 60,
        daily_instructions: [
          'Warm-up: 10 mins of gentle stretching',
          'Pilates core exercises: 30 mins',
          'Cool down: 20 mins of relaxation'
        ]
      },
      {
        age: 34,
        gender: 'male',
        fitness_level: 'intermediate',
        goal: 'muscle gain',
        workout: 'Bodybuilding',
        workout_type: 'Strength',
        days: 5,
        hours: 1.5,
        height: 178,
        weight: 75,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Weightlifting: 60 mins focusing on compound lifts',
          'Cool down: 20 mins of stretching'
        ]
      },
      {
        age: 39,
        gender: 'female',
        fitness_level: 'advanced',
        goal: 'endurance',
        workout: 'Marathon Training',
        workout_type: 'Endurance',
        days: 6,
        hours: 2,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Long run: 60 mins at a steady pace',
          'Interval training: 30 mins of sprinting and walking',
          'Strength training: 30 mins focusing on legs and core'
        ]
      },
      {
        age: 45,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'flexibility',
        workout: 'Yoga for Beginners',
        workout_type: 'Yoga',
        days: 3,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of gentle stretching',
          'Yoga poses: 30 mins focusing on flexibility',
          'Cool down: 20 mins of meditation'
        ]
      },
      {
        age: 29,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'weight loss',
        workout: 'Dance Cardio',
        workout_type: 'Dance',
        days: 4,
        hours: 1,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Warm-up: 10 mins of light dancing',
          'Dance cardio routine: 40 mins of high-energy dance',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 52,
        gender: 'male',
        fitness_level: 'advanced',
        goal: 'muscle gain',
        workout: 'Olympic Weightlifting',
        workout_type: 'Strength',
        days: 4,
        hours: 1.5,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Olympic lifts: 60 mins focusing on technique and strength',
          'Cool down: 20 mins of stretching'
        ]
      },
      {
        age: 37,
        gender: 'female',
        fitness_level: 'intermediate',
        goal: 'endurance',
        workout: 'Cycling for 30 minutes',
        workout_type: 'Cycling',
        days: 3,
        hours: 0.5,
        height: 160,
        weight: 55,
        daily_instructions: [
          'Warm-up: 5 mins of easy cycling',
          'Cycling: 20 mins at a moderate pace',
          'Cool down: 5 mins of stretching'
        ]
      },
      {
        age: 41,
        gender: 'male',
        fitness_level: 'beginner',
        goal: 'health',
        workout: 'Walking for 1 hour',
        workout_type: 'Walking',
        days: 5,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Walk at a comfortable pace for 60 mins',
          'Cool down: 5 mins of stretching'
        ]
      },
      {
        age: 30,
        gender: 'female',
        fitness_level: 'advanced',
        goal: 'muscle gain',
        workout: 'High-Intensity Strength Training',
        workout_type: 'Strength',
        days: 4,
        hours: 1,
        height: 165,
        weight: 60,
        daily_instructions: [
          'Warm-up: 10 mins of dynamic stretching',
          'Strength training: 40 mins of high-intensity exercises',
          'Cool down: 10 mins of stretching'
        ]
      },
      {
        age: 48,
        gender: 'male',
        fitness_level: 'intermediate',
        goal: 'weight loss',
        workout: 'Circuit Training',
        workout_type: 'Strength',
        days: 4,
        hours: 1,
        height: 175,
        weight: 70,
        daily_instructions: [
          'Warm-up: 10 mins of light cardio',
          'Circuit training: 30 mins of alternating exercises',
          'Cool down: 10 mins of stretching'
        ]
      }
    ]
  end
end
