# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get "/" do
erb :index
end

get "/about" do
 code = "<%= Time.now %>"
 erb code
end

get "/share" do
erb :share
end

get '/story' do
erb :story
end





