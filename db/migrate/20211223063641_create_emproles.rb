class CreateEmproles < ActiveRecord::Migration[6.1]
  def change
    create_table :emproles do |t|
      t.integer :employee_id
      t.integer :role_id

      t.timestamps
    end
  end
end
