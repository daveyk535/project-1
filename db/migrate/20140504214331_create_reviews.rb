class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :patty
      t.integer :bun
      t.integer :bun_patty_ratio

      t.timestamps
    end
  end
end
