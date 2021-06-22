Rails.application.configure do
  config.lograge.enabled = if !Rails.env.development? || ENV["LOGRAGE_IN_DEVELOPMENT"] == "true"
    true
  else
    false
  end
end
