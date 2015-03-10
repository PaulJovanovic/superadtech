class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.integer :width
      t.integer :height
    end
  end
end
