class AddSide2ToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :side, :decimal
  end
end
