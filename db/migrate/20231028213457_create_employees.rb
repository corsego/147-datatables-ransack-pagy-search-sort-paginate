class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :birthday
      t.string :country
      t.boolean :active

      t.timestamps
    end
  end
end
