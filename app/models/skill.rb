class Skill < ActiveRecord::Base
	has_one :employeeSkills
	has_one :employee, through: :employeeSkills
end
