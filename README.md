feedback_mailer
===============

Feedback Mailer for Rails app

Usage:

Gemfile:

    gem "feedback_mailer"

config/initializers/feedback_mailer.rb:

    FeedbackMailer.setup do |config|
      config.mail_from = "info@site.ru"
      config.mail_to   = "info@site.ru"
      config.site_host = "site.ru"

      # or = [] for text field with theme
      # config.themes = []
      config.themes = [
        "Theme 1",
        "Theme 2"
        ...
      ]
    end
