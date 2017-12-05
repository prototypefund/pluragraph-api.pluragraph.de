# frozen_string_literal: true

I18n.load_path += Dir[Rails.root.join('lib', 'locales', 'core', '*.{rb,yml}').to_s]
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

# Whitelist locales available for the application
I18n.available_locales = %i[en de]

# Set default locale to something other than :en
I18n.default_locale = :en
