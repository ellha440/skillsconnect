json.array!(@employees) do |employee|
  json.extract! employee, :id, :firstname, :lastname, :suburb, :phonenumber, :email, :origin, :age, :gender
  json.url employee_url(employee, format: :json)
end
