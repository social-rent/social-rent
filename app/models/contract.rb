class Contract < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :tenant
  def description
    "Tenant: #{tenant.telephone} Period: #{start_date} - #{end_date}"
  end
end
