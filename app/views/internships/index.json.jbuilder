json.array!(@internships) do |internship|
  json.extract! internship, :id, :employer_id, :phonenumber_contact_person, :title, :salary, :suburb, :email_contact_person
  json.url internship_url(internship, format: :json)
end
