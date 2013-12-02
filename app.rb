# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require "sinatra/cookies"

enable :sessions


class Post < ActiveRecord::Base
 validates :title, presence: true, length: { minimum: 5 }
 validates :body, presence: true
end

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end

get "/" do
erb :"index"
end

get "/about" do
erb :"about"
end

get "/share" do
erb :"share"
end

get '/story' do
erb :"story"
end





