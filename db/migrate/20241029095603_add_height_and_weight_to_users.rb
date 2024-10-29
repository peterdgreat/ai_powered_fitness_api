class AddHeightAndWeightToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :height, :float
    add_column :users, :weight, :float
  end
end
