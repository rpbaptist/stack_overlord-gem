# StackOverlord

This gem listens for exceptions raised by a ruby file and provides links
to the the most relevent answers on StackOverflow as well as the Ruby-docs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stack_overlord'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install stack_overlord

## Usage

Require this gem in the ruby program you're writing.  When an error
is generated, a link will be displayed in the terminal window. It's easiest to
launch the page by holding command and double-clicking the url in the terminal.
Subsequent exceptions raised will update the page with new links.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/stack_overlord/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
