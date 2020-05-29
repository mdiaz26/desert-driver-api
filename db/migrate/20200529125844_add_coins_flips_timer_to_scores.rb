class AddCoinsFlipsTimerToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :coins, :integer
    add_column :scores, :total_flips, :integer
    add_column :scores, :best_flip, :integer
    add_column :scores, :timer, :integer
    add_column :scores, :best_flip_count, :integer
  end
end
