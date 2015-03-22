require "bundler/setup"
Bundler.require(:default)

Geminabox.data = File.expand_path('data', File.dirname(__FILE__))

use Rack::Auth::Basic, "Protected Area" do |username, password|
  username == ENV["auth_username"] && password == ENV["auth_password"]
end

run Geminabox
