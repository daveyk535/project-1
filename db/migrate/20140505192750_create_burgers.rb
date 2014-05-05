class CreateBurgers < ActiveRecord::Migration
  def change
    create_table :burgers do |t|
      t.string :burger_name
      t.decimal :price
      t.string :protein
      t.string :bun_type
      t.boolean :grass_fed
      t.boolean :gluten_free
      t.decimal :average_score
      t.decimal :num_reviews
      t.text :description
      t.text :special_notes

      t.timestamps
    end
  end
end
