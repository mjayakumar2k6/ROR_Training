class CreateDepartments < ActiveRecord::Migration[6.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.boolean :status
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
