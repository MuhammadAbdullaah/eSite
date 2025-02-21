class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def current_country
    RequestInfo.current_country
  end

  def current_currency
    RequestInfo.current_currency
  end

  def current_language
    RequestInfo.current_language
  end

  def current_user
    RequestInfo.current_user
  end
end
