__binding.repl__

[![Build Status](https://travis-ci.org/rpag/binding.repl.svg?branch=master)](https://travis-ci.org/rpag/binding.repl)  
[![Code Climate](https://codeclimate.com/github/rpag/binding.repl/badges/gpa.svg)](https://codeclimate.com/github/rpag/binding.repl)

"binding.pry" for every ruby repl.

__Features__

* Start the repl pry, irb, ripl, rib or ir at runtime
* Auto-discover and start the first found repl at runtime
* Require of a repl is delayed until you call "binding.repl.&lt;repl name&gt;" 
* Require of a repl is never duplicated
* Easily extended to support new repls

__Examples__

__1.__

An example of how you can start a repl of your choice in a
[sinatra](https://github.com/sinatra/sinatra) web application:

```ruby
get "/greet" do
  binding.repl.{pry,irb,ripl,rib,ir}
  ["hello", "hola"].sample
end
```
__2.__

Auto-discover and start the first found repl:

```ruby
class Apple
  # auto discover and start the first found repl.
  binding.repl.auto

  # same as 'binding.repl.auto' but with less characters to type.
  binding.repl!
end
```

__Install__

rubygems:

    gem install binding.repl

git:

    git clone https://github.com/rpag/binding.repl.git
    cd binding.repl
    gem build binding.repl.gemspec
    gem install *.gem

__License__

See MIT-LICENSE.txt file.
