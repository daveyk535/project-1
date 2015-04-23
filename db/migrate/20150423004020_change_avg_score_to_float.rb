class ChangeAvgScoreToFloat < ActiveRecord::Migration
  def change
    change_column :burgers, :average_score, :float
  end
end
