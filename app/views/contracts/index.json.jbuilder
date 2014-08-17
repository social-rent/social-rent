json.array!(@contracts) do |contract|
  json.extract! contract, :id, :landlord_id_id, :tenant_id_id, :payment_due_date, :start_date, :end_date, :credit_union
  json.url contract_url(contract, format: :json)
end
