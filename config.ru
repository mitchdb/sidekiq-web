require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { 
    url: ENV['SIDEKIQ_REDIS_URL'], 
    namespace: ENV['SIDEKIQ_NAMESPACE'],
    size: 1 
  }
end

require 'sidekiq/web'

Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == ENV['WEB_USERNAME'] && password == ENV['WEB_PASSWORD']
end 

run Sidekiq::Web