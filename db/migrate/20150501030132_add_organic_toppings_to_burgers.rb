class AddOrganicToppingsToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :organic_toppings, :boolean
  end
end
