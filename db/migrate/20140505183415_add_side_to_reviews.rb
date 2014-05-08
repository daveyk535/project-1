class AddSideToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :toppings, :decimal
    add_column :reviews, :service, :decimal
    add_column :reviews, :total, :decimal
    add_column :reviews, :user_id, :integer
    add_column :reviews, :burger_id, :integer
    add_column :reviews, :comments, :text
  end
end
