class CreateRequiredSkills < ActiveRecord::Migration
  def change
    create_table :required_skills do |t|
      t.references :job, index: true, foreign_key: true
      t.string :skill

      t.timestamps null: false
    end
  end
end
