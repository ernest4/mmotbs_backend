# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis = { 
    :namespace => "stellarator_sidekiq_#{Rails.env}",
    :url => ENV.fetch('REDISCLOUD_URL') { 'redis://localhost:6379/1' }
  }

  schedule_file = 'config/schedule.yml'
  Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file)
end

Sidekiq.configure_client do |config|
  config.redis = {
    :namespace => "stellarator_sidekiq_#{Rails.env}",
    :url => ENV.fetch('REDISCLOUD_URL') { 'redis://localhost:6379/1' }
  }
end
