class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :empid
      t.belongs_to :department

      t.timestamps
    end
  end
end
