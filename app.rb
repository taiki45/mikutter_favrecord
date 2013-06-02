require 'sinatra'
require 'haml'
require File.expand_path('../connection', __FILE__)

include FavRecord

get "/" do
  @users = User.order(:favs_count).reverse_order.all
  haml :index
end
