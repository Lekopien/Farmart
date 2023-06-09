# RubyVersion [<img src="https://badge.fury.io/rb/ruby_version.svg" alt="Gem Version" />](https://badge.fury.io/rb/ruby_version) [<img src="https://github.com/janlelis/ruby_version/workflows/Test/badge.svg" />](https://github.com/janlelis/ruby_version/actions?query=workflow%3ATest)

Provides a `RubyVersion` to simplify checking for the right Ruby version in
your programs.

## Setup

On your command-line:

    $ gem install ruby_version

In Ruby:

    require 'ruby_version'

## Usage

    # Output RUBY_VERSION
    RubyVersion.to_s

    # Check for the main version with a Float
    RubyVersion.is? 2.1

    # Use strings for exacter checking
    RubyVersion.is.above '1.9.2'
    RubyVersion.is.at_least '2.0.0' # or exactly, below, at_most

    # You can use the common comparison operators
    RubyVersion >= '1.8.7'
    RubyVersion.between? '1.8.7', '1.9.2'

    # Relase date checks
    RubyVersion.is.older_than Date.today
    RubyVersion.is.newer_than '2009-08-19'

    # Misc Accessors
    RubyVersion.major # => 1
    RubyVersion.minor # => 8
    RubyVersion.tiny  # => 7
    RubyVersion.patchlevel # => 249
    RubyVersion.description # => "ruby 1.8.7 (2010-01-10 patchlevel 249) [i486-linux]"

## Also See

- https://github.com/janlelis/ruby_engine
- https://github.com/janlelis/ruby_info
- https://github.com/rdp/os

## J-_-L

Copyright (c) 2010-2014 Jan Lelis. MIT License. Originated from the zucker gem.
