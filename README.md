# Legion::Extensions::Http

A Legion Extension designed to integrate with [Elastic App Search](https://www.elastic.co/app-search/) using
the [elastic-app-search gem](https://rubygems.org/gems/elastic-app-search)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lex-elastic_app_search'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install lex-elastic_app_search

## Adding to Legion
You can manually install with a `gem install lex-elastic_app_search` command or by adding it into your settings with something like this
```json
{
  "extensions": {
    "elastic_app_search": {
      "enabled": true
    }
  }
}
```

## Usage
* The host will default to `http://localhost:3002` unless you pass it in as an argument or settings it in `Legion::Settings`

*More to be added*

##### Runners
1) analytics
2) click through
3) credentials
4) curations
5) documents
6) engines
7) schemas
8) search
9) synonyms

#### Example Payloads
*To be added*

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
