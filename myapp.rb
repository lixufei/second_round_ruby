require 'sinatra'
require 'json'

set :root, File.dirname(__FILE__)

get '/' do
  'get'
end

get '/home' do
  File.read("home.html")
end

post '/home/lixufei' do
  # data = JSON.parse request.body
  #   data.to_json
  p "#{params[:name]}"
  data = "#{params[:name]}"
end

post '/api' do
  request.body.rewind
  data = JSON.parse request.body
  "post #{data['aaa']}"
end

post '/' do
  data = JSON.parse request.body.read
    data.to_json
end

post '/postone' do
  data = JSON.parse request.body.read
    data.to_json
end