$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'test/unit'
require 'rack/test'
require 'shoulda'
require 'mocha'
require 'atlas_middleware'