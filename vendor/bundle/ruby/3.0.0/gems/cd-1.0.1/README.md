# cd [![[version]](https://badge.fury.io/rb/cd.svg)](http://badge.fury.io/rb/cd)

Enhanced cd command for the Ruby console.


## Setup

```
gem install cd
```


## Usage

```ruby
require 'cd'
extend Cd

cd 'some/dir' # change to that directory and list its content
~cd # change to home directory
-cd # change to last directory
```


## MIT License

Copyright (C) 2015 Jan Lelis <http://janlelis.com>. Released under the MIT license.
