require 'sinatra'
require 'pry' if development?
require_relative 'loader'

get '/' do
  erb :index
end

get '/submission' do
  erb :submission
end

post '/submit' do
  problem = Problem.new(params[:problem_id], params[:set].to_sym)
  case params[:action]
  when "download"
    send_file(problem.input_path, filename: "#{problem.id}-#{problem.set}.in")
  when "submit"
    sub = Submission.new(problem, params[:output])
    sub.judge
  else
    status 400
    "Bad request"
  end
end
