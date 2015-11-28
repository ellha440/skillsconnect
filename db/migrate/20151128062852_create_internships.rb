class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.references :employer, index: true, foreign_key: true
      t.string :phonenumber_contact_person
      t.string :title
      t.string :salary
      t.string :suburb
      t.string :email_contact_person

      t.timestamps null: false
    end
  end
end
