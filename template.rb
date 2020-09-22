gem 'rails-i18n'

gem_group :development do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
end

initializer 'i18n.rb', <<-CODE
# encoding: utf-8

# I18n.default_locale = :'pt-BR'
CODE

after_bundle do
  git :init
  git add: '.'
  git commit: %Q{ -m 'Initial commit' }
end
