class CreateFirstnames < ActiveRecord::Migration
  def change
    create_table :firstnames do |t|
      t.string :Lastname
      t.string :Suburb
      t.string :Phonenumber
      t.string :Email
      t.string :Origin
      t.string :Age
      t.string :Gender

      t.timestamps null: false
    end
  end
end
