class ApplicationController < ActionController::Base

  before_action do
    RequestInfo.init(
      user: current_user,
      country: current_user&.country,
      language: current_user&.language,
      currency: current_user&.currency_preferences
    )
  end

end
