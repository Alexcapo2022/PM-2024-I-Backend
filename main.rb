require 'sinatra'
require 'sequel'
# configs
set :public_folder, File.dirname(__FILE__) + '/public'
set :views, File.dirname(__FILE__) + '/views'
set :protection, except: :frame_options
#set :bind, '0.0.0.0'
#set :port, 8080
# db
require_relative 'configs/database'
require_relative 'configs/models'
# end points
Dir[File.join(__dir__, 'routes', '*.rb')].each { |file| require_relative file }

get '/' do
  erb :home
end

