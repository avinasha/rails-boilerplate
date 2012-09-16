Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  else
    provider :developer
  end
end
