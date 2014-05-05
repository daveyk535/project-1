class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.float :patty
      t.float :bun
      t.float :bun_patty_ratio

      t.timestamps
    end
  end
end
