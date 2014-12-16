require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
  set :public_folder, Proc.new { File.join(root, "public") }
end

get '/' do
  erb :index, :layout => :layout
end

get '/:page' do
  erb params[:page], :layout => :layout
end
