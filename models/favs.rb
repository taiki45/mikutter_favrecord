module FavRecord
  class Fav < ActiveRecord::Base
    attr_accessible :tweet_id
    belongs_to :user, counter_cache: true
  end
end
