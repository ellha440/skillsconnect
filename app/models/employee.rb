class Employee < ActiveRecord::Base
	has_many :employeeSkills
  	has_many :skills, through: :employeeSkills
end
