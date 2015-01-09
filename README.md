# Arsystem

Exposes all the ARAPI classes and methos to jRuby.
Note: ARAPI jar files not included.  See instructions below.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arsystem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arsystem
    
Create a /lib/java directory in your project and copy the following files in to it;
arapi81_build001.jar
log4j-1.2.14.jar
log4j.xml

Except fo the xml file, these jars are pretty much hard coded, so ensure the correct vesrions.  I will make them a little more dynamic in a future release.  

## Usage
```ruby
config = {
  :username => 'Demo',
  :password => '',
  :server => '127.10.0.1',
  :locale => '',
  :port => 5000,
}
@user = Arsystem::ARServerUser.new(
  config[:username],
  config[:password],
  config[:locale],
  config[:server],
  config[:port])
}
@user.getServerInfo
@user.logout
```
## Contributing

1. Fork it ( https://github.com/johanwasserman/arsystem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
