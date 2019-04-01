class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.belongs_to :company
      t.string :name
      t.string :logo
      t.timestamps
    end
  end
end
