require File.expand_path('../connection', __FILE__)

namespace :db do
  desc "create database"
  task :create_database do
    class CreateDatabase < ActiveRecord::Migration
      def up
        create_table :users do |t|
          t.string :twitter_id
          t.string :screen_name
          t.string :name
          t.integer :favs_count, defaul: 0
        end

        create_table :favs do |t|
          t.string :tweet_id
          t.belongs_to :user
        end
      end
    end

    CreateDatabase.new.up
  end
end
