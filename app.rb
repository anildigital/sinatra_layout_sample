require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
  set :public_folder, Proc.new { File.join(root, "public") }
end

get '/' do
  erb :index, :layout => :layout
end

get '/section_a' do
  erb :section_a, :layout => :layout
end


get '/section_b' do
  erb :section_b, :layout => :layout
end
