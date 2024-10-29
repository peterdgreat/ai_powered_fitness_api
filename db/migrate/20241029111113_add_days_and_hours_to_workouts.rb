class AddDaysAndHoursToWorkouts < ActiveRecord::Migration[7.1]
  def change
    add_column :workouts, :days, :integer
    add_column :workouts, :hours, :float
  end
end
