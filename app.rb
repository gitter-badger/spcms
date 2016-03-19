require 'sinatra'
require 'pry' if development?

get '/' do
  erb :index
end
