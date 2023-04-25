require 'bundler/setup'
Bundler.require :default, :test
require_relative 'support/mock'
require_relative 'support/repls'
Minitest.autorun
