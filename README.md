# Unbutton

Unbutton provides a set of helper methods to share content on the web without crappy buttons.

## Installation

Add this line to your application's Gemfile:

    gem 'unbutton'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unbutton

## Usage

	require 'unbutton'
	Unbutton.facebook_link "http://wallwisher.com", { title: 'Paper for the web', description: 'Simplest way to put content on the web', media: 'http://wallwisher.com/assets/wallwisher-big-crane.png' }

Supported services are `facebook`, `twitter`, `pinterest`, `tumblr`, `googleplus`, and `linkedin`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
