class Department < ApplicationRecord
    before_save :log_object
    after_save :print_object

    has_many :employees
    

    before_create :before_create
    def log_object
        p "Before Save"
        self.name = "Default Name" unless self.name
        p self
    end

    def print_object
        p "After save"
        p self.attributes
    end

    after_find do
        p "Record Found"
    end

    after_initialize do
        #self.name = "After Initialize"
    end
end
