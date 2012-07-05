require 'acl9/version'
require 'acl9/model_extensions'
require 'acl9/controller_extensions'
require 'acl9/helpers'
require 'acl9/railtie'

module Acl9
  def self.config
    Rails.config.acl9
  end
end

Acl9Helpers = Acl9::Helpers unless defined?(Acl9Helpers)
