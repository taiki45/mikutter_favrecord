module FavRecord
  class User < ActiveRecord::Base
    has_many :favs
  end
end
