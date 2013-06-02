module FavRecord
  class User < ActiveRecord::Base
    attr_accessible :twitter_id, :name, :screen_name
    has_many :favs
  end
end
