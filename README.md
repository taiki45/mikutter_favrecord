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
cp -v sample_database.yml database.yml
bundle isntall
bundle exec rake db:create_database

cd /your/mikutter/dir
bundle install
ruby mikutter.rb
```

You can use any other database like MySQL.
Edit database.yml.
For more detal, see `ActiveRecord::Base.establish_connection` document.

## License
Copyright (c) 2013 Taiki ONO (@taiki45)

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
