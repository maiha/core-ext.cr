# core-ext.cr [![Build Status](https://travis-ci.org/maiha/core-ext.cr.svg?branch=master)](https://travis-ci.org/maiha/core-ext.cr)

Personal but versatile core class extensions for [Crystal](http://crystal-lang.org/).

- crystal: 0.20.1

## API

- Enumerable#grep(T)   : Array(T)
- String#first?(Regex) : String?
- String?#any?         : Bool

## Usage


```crystal
require "core-ext"

a = [1, nil, "a"]  # Array(Int32 | String | Nil)
a.grep(String)     # => ["a"] (Array(String))

"a:12".first?(/(\d+)/)  # => "12"

nil.any?           # => false
"".any?            # => false
" ".any?           # => true
if e.message.any?  # String?#any?
```

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  core-ext:
    github: maiha/core-ext.cr
```

## Development

```shell
make
```

## Contributing

1. Fork it ( https://github.com/maiha/core-ext.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [maiha](https://github.com/maiha) maiha - creator, maintainer
