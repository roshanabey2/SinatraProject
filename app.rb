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

get '/random-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end    

get '/cat-form' do 
    erb(:cat_form)
end
