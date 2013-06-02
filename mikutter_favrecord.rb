# -*- coding: utf-8 -*-
require File.expand_path('../connection', __FILE__)
require 'pry'

module FavRecord

  Plugin.create :mikutter_favrecord do
    on_favorite do |service, fav_user, message|
      unless user.is_me?
        user = User.find_by_twitter_id(fav_user.id).first
        unless user
          user = User.create(
            twitter_id: fav_user.id,
            name: fav_user[:name],
            screen_name: fav_user.idname
          )
        end

        fav = Fav.find_by_tweet_id(message.id).first
        unless fav
          Fav.create(tweet_id: message.id, user: user)
        end
      end
    end
  end

end
