require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello!"
end  

get '/secret' do
  "This is a top secret message"    
end  

get '/test' do
  "This is a top test for the top team"    
end  

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end  

get '/named-cat' do
  print params
  @name = params[:name]
  erb(:index)
end
