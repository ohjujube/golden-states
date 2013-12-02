# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'

get "/" do
erb :index
end

get "/about" do
erb :about
end

get "/share" do
erb :share
end

get '/story' do
erb :story
end





