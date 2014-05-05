class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.decimal :patty
      t.decimal :bun
      t.decimal :bun_patty_ratio

      t.timestamps
    end
  end
end
