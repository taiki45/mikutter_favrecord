# mikutter_favrecord.rb
Let's record faved user!

## Usage
* show faved users and counts

```sh
bundle exec rake show
```

* show faved users and counts via web app

```sh
bundle exec ruby app.rb
```

## Install

```sh
mkdir -p ~/.mikutter/plugin
git clone git://github.com/taiki45/mikutter_favrecord.git ~/.mikutter/plugin/mikutter_favrecord
cd ~/.mikutter/plugin/mikutter_favrecord
bundle isntall
bundle exec rake db:create_database

cd /your/mikutter/dir
bundle install
ruby mikutter.rb
```
