# frozen_string_literal: true

# Dependencies
#
# Sigh. Rails autoloads the gems specified in the Gemfile and nothing else.
# We need to explicitly require all of our dependencies listed in deposit.gemspec
#
# See also https://github.com/carlhuda/bundler/issues/49

require 'money-rails'
require 'killbill_client'
require 'killbill-assets-ui'

module Deposit
  class Engine < ::Rails::Engine
    isolate_namespace Deposit
  end
end
