require 'sinatra'
require "sinatra/reloader" if development?
get '/' do
    'Hello world!'
end

get '/secret' do
    "Hello Mr Muffin."
end

get '/happy' do
      'Bingo'
end

get '/derpy' do
    "I ate chocolate today"
end

get '/cat' do
    erb(:index)
end    
