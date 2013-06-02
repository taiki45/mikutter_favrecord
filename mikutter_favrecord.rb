# -*- coding: utf-8 -*-
require File.expand_path('../connection', __FILE__)

module FavRecord

  Plugin.create :mikutter_favrecord do
    on_favorite do |service, fav_user, message|
      unless fav_user.is_me?
        user = User.find_by_twitter_id(fav_user.id)
        unless user
          user = User.create(
            twitter_id: fav_user.id,
            name: fav_user[:name],
            screen_name: fav_user.idname
          )
        end

        fav = Fav.find_by_tweet_id_and_user_id(message.id, user.id)
        unless fav
          fav = Fav.new(tweet_id: message.id)
          fav.user = user
          fav.save
        end
      end
    end
  end

end
