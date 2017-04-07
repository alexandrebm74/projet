class CreateVilles < ActiveRecord::Migration
  def change
    create_table :villes do |t|
      t.string :nom
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
