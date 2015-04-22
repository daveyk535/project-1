class AddWowFactorToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :wow_factor, :integer
  end
end
