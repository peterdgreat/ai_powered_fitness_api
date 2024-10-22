class CreateFitnessGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :fitness_goals do |t|
      t.string :name

      t.timestamps
    end
  end
end
