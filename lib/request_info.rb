module RequestInfo

  #Per Request Data storage
  def self.init(currency:, user:, language:)
    RequestStore.store[:currency] = currency
    RequestStore.store[:language] = language
    RequestStore.store[:user] = user
  end

  def self.get(attr)
    RequestStore.store[attr.to_sym]
  end


  def self.current_currency
    get :currency
  end

  def self.current_language
    get :language
  end

  def self.current_user
    get :user
  end
end