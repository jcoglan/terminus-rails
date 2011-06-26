require File.expand_path('../../config/environment', __FILE__)
require 'capybara/dsl'
require 'terminus'

Capybara.current_driver = :terminus
Capybara.app = TerminusRails::Application
