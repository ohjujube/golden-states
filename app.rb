# app.rb

# blah blah blah 

require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require "sinatra/cookies"

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

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
    #response.set_cookie 'page',
    #  {:value=> params[:splat], :max_age => "2592000"}
    erb :story
  end

# get '/story' do
# erb :story
# end

  get '/current' do
    redirect to request.cookies['page'] #("/story#" + request.cookies['page'])
  end





