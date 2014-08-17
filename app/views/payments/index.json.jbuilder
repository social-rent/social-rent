json.array!(@payments) do |payment|
  json.extract! payment, :id, :contract_id, :full
  json.url payment_url(payment, format: :json)
end
