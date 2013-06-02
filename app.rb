require 'sinatra'
require 'haml'
require 'thin'
require File.expand_path('../connection', __FILE__)

get "/" do
  @users = FavRecord::User.order(:favs_count).reverse_order.all
  haml :index
end
