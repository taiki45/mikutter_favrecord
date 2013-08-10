require File.expand_path('../connection', __FILE__)
require 'json'

namespace :db do
  desc "create database"
  task :create_database do
    class CreateDatabase < ActiveRecord::Migration
      def up
        create_table :users do |t|
          p t.methods.include? :index
          t.string :twitter_id
          t.string :screen_name
          t.string :name
          t.integer :favs_count, defaul: 0
        end

        create_table :favs do |t|
          t.string :tweet_id
          t.belongs_to :user
        end

        add_index :users, :twitter_id, unique: true
        add_index :users, :screen_name, unique: true
        add_index :users, :favs_count
        add_index :favs, [:tweet_id, :user_id]
      end
    end

    CreateDatabase.new.up
  end
end

desc "show all faved users order by faved count"
task :show do
  with_protected do
    FavRecord::User.order(:favs_count).reverse_order.each do |user|
      puts "#{user.screen_name},#{user.favs.count}"
    end
  end
end

namespace :json do
  desc "show all faved users order by faved count"
  task :show do
    with_protected do
      FavRecord::User.order(:favs_count).reverse_order.each do |user|
        puts({screen_name: user.screen_name, count: user.favs.count}.to_json)
      end
    end
  end
end

def with_protected(&block)
  block.call
rescue Errno::EPIPE
end

task :default => :show
