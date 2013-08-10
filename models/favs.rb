module FavRecord
  class Fav < ActiveRecord::Base
    belongs_to :user, counter_cache: true
  end
end
