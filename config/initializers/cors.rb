Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://our.frontend.domain.com'
    resource '/api/*',
      headers: %w(Authorization),
      methods: :any,
      expose: %w(Authorization),
      max_age: 600
  end
end
