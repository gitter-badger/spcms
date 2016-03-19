require 'sinatra'
require 'pry' if development?

get '/' do
  erb :index
end

get '/submission' do
  erb :submission
end
