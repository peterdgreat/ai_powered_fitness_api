class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :workout_type
      t.integer :duration
      t.string :intensity
      t.text :instructions

      t.timestamps
    end
  end
end
