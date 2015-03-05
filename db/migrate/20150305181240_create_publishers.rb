class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name, unique: true
      t.string :slug, unique: true
      t.timestamps
    end
  end
end
