json.array!(@required_skills) do |required_skill|
  json.extract! required_skill, :id, :job_id, :skill
  json.url required_skill_url(required_skill, format: :json)
end
