json.array!(@employers) do |employer|
  json.extract! employer, :id, :company_name, :address, :about
  json.url employer_url(employer, format: :json)
end
