# Raps

Rack server to delivery rails public directory.  
Mainly, for fetching public data on testing.

## Usage

* test/test_helper.rb

```rb
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

include WebMock::API # if you use webmock

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add this line
  stub_request(:get, /test.statics.local\/.*/).to_rack(Raps::Server)
end
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'raps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install raps


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maruware/raps.
