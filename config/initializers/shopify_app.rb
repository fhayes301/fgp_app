ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "00686c43106843a87164096f9866f96c"
  config.secret = "694412cd98c39a14ab37e2eb614b7c1c"
  config.scope = "read_customers, read_orders, write_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  shop_url = "https://#{'00686c43106843a87164096f9866f96c'}:#{'JackDaniels2112$'}@#{'fit-gym-parts'}.myshopify.com/admin"
  ShopifyAPI::Base.site = shop_url
end
