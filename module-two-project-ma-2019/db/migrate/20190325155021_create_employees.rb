class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.belongs_to :company
      t.string :email
      t.string :photo
      t.timestamps
    end
  end
end
