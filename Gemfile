source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'

group :production, :staging do
  gem "pg"
end

group :development, :test do
      gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'libv8'
gem 'rolify'
gem 'sendgrid'
gem 'simple_form'
group :assets do
  gem 'therubyracer', :platform=>:ruby, :require=>"v8"
end
group :development do
  gem 'hub', :require=>nil
end

gem 'paper_trail'
gem 'twitter-bootstrap-rails'
gem 'less-rails'
