ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

require 'rubygems'
require 'uri'
require 'pathname'
require 'httparty'
require 'dotenv'
Dotenv.load

require_relative '../lib/notifier'

require 'pg'
require 'active_record'
require 'logger'

require 'bcrypt'

require 'sinatra'
require "sinatra/reloader" if development?

require 'erb'
require 'faker'
require 'giphy'
require 'twilio-ruby'
require 'awesome_print'


APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = APP_ROOT.basename.to_s

configure do
  Giphy::Configuration.configure do |config|
    # config.version = THE_API_VERSION
    config.api_key = 'dc6zaTOxFJmzC'
  end

  set :root, APP_ROOT.to_path
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'this is a secret shhhhh'

  set :views, File.join(Sinatra::Application.root, "app", "views")
end

Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

require APP_ROOT.join('config', 'database')
