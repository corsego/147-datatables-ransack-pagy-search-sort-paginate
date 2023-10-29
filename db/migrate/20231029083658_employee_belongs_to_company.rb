class EmployeeBelongsToCompany < ActiveRecord::Migration[7.1]
  def change
    add_reference :employees, :company, null: false, foreign_key: true
  end
end
