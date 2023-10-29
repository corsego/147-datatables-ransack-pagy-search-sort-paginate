class Employee < ApplicationRecord
  belongs_to :company

  def self.ransackable_attributes(auth_object = nil) 
    ["active", "birthday", "country", "created_at", "email", "first_name", "id", "last_name", "phone", "updated_at"] 
  end

  def self.ransackable_associations(auth_object = nil)
    ["company"]
  end
end
