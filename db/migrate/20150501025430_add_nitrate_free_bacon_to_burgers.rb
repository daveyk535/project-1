class AddNitrateFreeBaconToBurgers < ActiveRecord::Migration
  def change
    add_column :burgers, :NitrateFreeBacon, :boolean
  end
end
