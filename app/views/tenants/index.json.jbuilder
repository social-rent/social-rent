json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :telephone
  json.url tenant_url(tenant, format: :json)
end
