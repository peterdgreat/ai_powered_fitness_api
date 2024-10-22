class CreateUserWorkoutHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :user_workout_histories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.datetime :completed_at
      t.text :feedback

      t.timestamps
    end
  end
end
