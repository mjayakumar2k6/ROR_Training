class Employee < ApplicationRecord
    belongs_to :department, optional: true
    has_many :employee_roles
    has_many :roles, through: :employee_roles
    
    #has_and_belongs_to_many :object, join_table: "table_name", foreign_key: "object_id"
    #has_many :roles, through: :employeeroles, source: :join_association_table_foreign_key_to_objects_table
end
