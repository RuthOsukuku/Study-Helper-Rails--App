source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

# Specify the Rails version
gem "rails", "~> 7.0.7"

# Include the bcrypt gem for authentication
gem 'bcrypt', '~> 3.1.7'

# Use PostgreSQL as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS)
gem 'rack-cors', require: 'rack/cors'

group :development, :test do
  # Debugging gem for development and test environments
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Additional development-specific gems can be added here
end
