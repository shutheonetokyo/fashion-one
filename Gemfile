
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'bcrypt',         '3.1.13'
gem 'activeadmin'
gem 'devise'
gem 'faker',                   '2.1.2'
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'
gem 'enum_help'
gem 'carrierwave', '~> 2.0'
gem 'fog-aws'
gem 'mini_magick'
gem 'kaminari'
gem 'ransack'
gem "pg", "~> 1.1"
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rails-controller-testing', '1.0.4'
  gem 'minitest',                 '5.14.4'
  gem 'minitest-reporters',       '1.3.8'
  gem 'guard',                    '2.16.2'
  gem 'guard-minitest',           '2.4.6'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
