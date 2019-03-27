class CreateAds < ActiveRecord::Migration[5.2]
  def change
    create_table :ads do |t|
      t.string :name
      t.belongs_to :client
      t.string :ad_type
      t.string :picture
      t.string :location
      t.string :target_age
      t.string :copy
      t.string :duration
      t.float :cost
      t.timestamps
    end
  end
end
