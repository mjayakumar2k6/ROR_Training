class Department < ApplicationRecord
    before_save :log_object
    after_save :print_object

    has_many :employees
    

    # before_create :before_create
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

    scope :active, -> { where(:status => true)}
    scope :inactive, -> { where(:status => nil)}
    # Ex:- scope :active, -> {where(:active => true)}
    # Ex:- scope :active, -> {where(:active => true)}


    validates_presence_of :name
    #validates :name, length: {minimum: 5, maximum: 8}
    #validates :name, length: {in: 5..8}
    #validates :name, length: {is: 10}
    validates :name, uniqueness: true
    validates :created_by, numericality: true
    #validates :email, confirmation: true
    
end
