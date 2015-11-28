class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :suburb
      t.string :phonenumber
      t.string :email
      t.string :origin
      t.string :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
