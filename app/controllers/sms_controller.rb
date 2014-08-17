class SmsController < ApplicationController
  require 'clockwork'
  def index
    logger.info sms_params
    @tenant = Tenant.find_by(telephone: sms_params[:from])
    if @tenant.present?
      logger.info "VALID TENANT"
    else
      logger.info "INVALID TENANT"
    end
    landlord_tel = sms_params[:content].to_s.split.last
    sms_landlord(@tenant, landlord_tel)
    render text: 'OK'
  end
  private
  def sms_params
    params.permit(:id, :to, :from, :keyword, :content)
  end

  def sms_landlord(tenant=nil, landlord)
    api = Clockwork::API.new(ENV['CLOCKWORK'])
    if tenant.present?
      content = "#{tenant.telephone} is a valid member"
    else
      content = "Tenant is not a valid member"
    end
    message = api.messages.build( :to => landlord, :content => content )
    response = message.deliver

    if response.success
      puts response.message_id
    else
      puts response.error_code
      puts response.error_description
    end
  end
end
