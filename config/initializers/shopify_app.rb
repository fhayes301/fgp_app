ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = ENV['SHOPAPI']
  config.secret = ENV['SHOPIFYSECRET']
  config.scope = "read_orders, read_products, read_themes, write_themes"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  shop_url = ENV["SHOPURL"]
  ShopifyAPI::Base.site = shop_url
end
