class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.belongs_to :ad 
      t.belongs_to :employee
      t.string :client
      t.timestamps
    end
  end
end
