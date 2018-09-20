# core-ext.cr [![Build Status](https://travis-ci.org/maiha/core-ext.cr.svg?branch=master)](https://travis-ci.org/maiha/core-ext.cr)

Personal but versatile core class extensions for [Crystal](http://crystal-lang.org/).

- crystal: 0.26.1

#### BREAKING CHANGES
- 0.2.0: Removed `Time.parse(String)`, use `pretty.cr`

## API

- Enumerable#grep(T)       : Array(T)
- String#first?(Regex)     : String?
- String?#any?             : Bool
- Time::Span.parse(String) : Time::Span

## Usage

```crystal
require "core-ext"
```

#### Enumerable#grep(T)

```crystal
a = [1, nil, "a"]  # Array(Int32 | String | Nil)
a.grep(String)     # => ["a"] (Array(String))
```

#### String#first?(Regex)

```crystal
"a:12".first?(/(\d+)/)  # => "12"
```

#### String?#any?

```crystal
nil.any?           # => false
"".any?            # => false
" ".any?           # => true
```

#### Time::Span.parse(String)

```crystal
Time::Span.parse("01:02:03")       # => Time::Span.new(1, 2, 3)
Time::Span.parse("5.01:02:03")     # => Time::Span.new(5, 1, 2, 3)
Time::Span.parse("5.01:02:03.010") # => Time::Span.new(5, 1, 2, 3, 10)
```

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  core-ext:
    github: maiha/core-ext.cr
    version: 0.1.3
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
