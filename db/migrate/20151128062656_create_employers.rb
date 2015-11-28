class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :address
      t.text :about

      t.timestamps null: false
    end
  end
end
