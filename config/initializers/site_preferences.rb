if Preference.table_exists? and Preference.attribute_method?(:name)
  #disable ssl
  Spree::Config.set :allow_ssl_in_production => false
end
