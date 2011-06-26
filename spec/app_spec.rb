require 'spec_helper'

describe TerminusRails::Application do
  include Capybara::DSL
  
  before do
    Terminus.ensure_browser :docked
    Terminus.browser = :docked
  end
  
  after { Terminus.return_to_dock }
  
  it "has a home page" do
    visit "/"
    page.should have_css("h1", :text => "Hello, World!")
  end
end
