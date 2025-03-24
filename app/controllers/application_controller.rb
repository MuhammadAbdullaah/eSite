class ApplicationController < ActionController::Base

  before_action do
    RequestInfo.init(
      user: current_user,
      language: current_user&.language,
      currency: current_user&.currency_preferences
    )

    end
end
