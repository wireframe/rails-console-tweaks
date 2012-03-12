# rails-console-tweaks

Customize Rails console with more useful defaults.

Useful for local development as well as inspecting production system
output.

Introduces an optional Bundler group to control what gems are loaded
into your console.  This is uesful to [prevent console specific gems from
being loaded into your production environment](http://iain.nl/getting-the-most-out-of-bundler-groups)


## Features

* autoload gems in `console` group into your console
* print all SQL statments executed within the current console
* (optional) auto enable [HIRB](https://github.com/cldwalker/hirb) to pretty print
  `ActiveRecord` objects
* (optional) auto start [WIRB](https://github.com/janlelis/wirb) to
  colorize ruby object inspection


## Installation

```ruby
# Gemfile
gem 'rails-console-tweaks'

# add any gems that should be available only to the console
group :console do
  gem 'wirb'
  gem 'hirb'
  gem 'awesome_print'
end
```

That's it!  No extra configuration is necessary!

## Contributing
 
* Fork the project
* Fix the issue
* Add unit tests
* Submit pull request on github

See CONTRIBUTORS.txt for list of project contributors

## Copyright

Copyright (c) 2011 Ryan Sonnek
See LICENSE.txt for further details.
