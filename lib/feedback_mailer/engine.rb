module FeedbackMailer
  class Engine < Rails::Engine; end

  mattr_accessor :mail_from
  mattr_accessor :mail_to
  mattr_accessor :site_host
  mattr_accessor :themes

  def self.setup
    yield self
  end
end
