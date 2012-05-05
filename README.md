# Rand62

Generates random alphanumeric characters.

```ruby
Rand62.safe(10)
 => "yTX35RzROS"
```

Rand62 has better space efficiency than `SecureRandom.uuid` or `SecureRandom.hex`. It's sexier than `SecureRandom.base64` or `SecureRandom.urlsafe_base64` as it doesn't contain any symbols.

If you care more about database efficiency than Ruby, and user-friendliness of the look of IDs, use Rand62.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rand62'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install rand62
```

## Usage

There are two methods: `safe` and `fast`. Pass the length of generated string to the method.

```ruby
require 'rand62'

Rand62.safe(10)
 => "yTX35RzROS"

Rand62.fast(10)
 => "sWCGqxY2kF"
```

It's recommended to use `safe` until the performance becomes a real problem.

## Performance

The following test results came from ruby 1.9.3p125 on iMac 2011 Core i5 2.7GHz.

```ruby
Rand62.safe(1000)   # 0.007871
Rand62.fast(1000)   # 0.000654
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
