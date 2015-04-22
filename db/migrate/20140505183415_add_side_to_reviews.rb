class AddSideToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :toppings, :integer
    add_column :reviews, :total, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :burger_id, :integer
    add_column :reviews, :comments, :text
  end
end
