class CreateEmployeeRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_roles do |t|
      t.integer :employee_id
      t.integer :role_id
      t.boolean :status

      t.timestamps
    end
  end
end
