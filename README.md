# Sidekiq Worker Web

This is just a barebones application that can be deployed on heroku to provide a front-end to the Sidekiq service.

## Environment Variables
* `SIDEKIQ_REDIS_URL` - The redis url to your sidekiq server
* `SIDEKIQ_NAMESPACE` - The namespace for the sidekiq redis
* `WEB_USERNAME` - The username for the web interface
* `WEB_PASSWORD` - The password for the web interface