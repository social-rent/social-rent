class DashboardController < ApplicationController
  before_action :authenticate_landlord!
  def index
  end
end
