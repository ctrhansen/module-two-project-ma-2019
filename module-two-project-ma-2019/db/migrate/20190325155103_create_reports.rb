class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.belongs_to :campaign
      t.string :name
      t.string :report_type
      t.string :client
      t.string :duration
      t.float :roi
      t.integer :impressions
      t.integer :views
      t.integer :clicks
      t.integer :reach
      t.float :conversions
      t.timestamps
    end
  end
end
