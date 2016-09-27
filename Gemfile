source 'https://rubygems.org'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Use cocoon for nested forms fields generator
gem 'cocoon'
# Use devise for authentication
gem 'devise'
# Use omniauth-[provider] for outside authentication
gem 'omniauth-facebook'
# Use paperclip for recipe images
gem 'paperclip', '4.3.6'
# Use acts as votable for liking recipes
gem 'acts_as_votable', '~> 0.10.0'
#Use for bootstrap
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
# Use for icons
gem 'font-awesome-sass'
# Use for image movement
# For transitions
gem 'masonry-rails', '~> 0.2.4'
# For reloading jquery 
gem 'jquery-turbolinks', '~> 2.1'
# Use for authorization
gem 'pundit', '~> 1.1'
# Use for json serialization
gem 'active_model_serializers'
# Use for Amazon cloud storage
gem 'aws-sdk', '<2.0'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :production do 
  # Use 12factor gem per Heroku documentation
  gem 'rails_12factor'
  # Use postgres for Heroku
  gem 'pg', '~> 0.18.4'  
end
