# Rand62

Generates random alphanumeric characters.

```ruby
Rand62.safe(10)
 => "yTX35RzROS"
```

It has better space efficiency than `SecureRandom.uuid` or `SecureRandom.hex`. It's sexier than `SecureRandom.base64` or `SecureRandom.urlsafe_base64` as Rand62 doesn't contain any symbols.

If you care more about database efficiency than Ruby, and user-friendliness of the look of IDs, use Rand62.

## Installation

Add this line to your application's Gemfile:

    gem 'rand62'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rand62

## Usage

There are two methods: `fast` and `safe`.

* **safe** - It has less chance of collision, as internally it uses `SecureRandom`. Use this method until the performance of this method becomes a problem.
* **fast** - About 10x faster than `safe` on Mac, but be careful as internally it uses rand().

```ruby
Rand62.fast(10)
 => "sWCGqxY2kF"

Rand62.safe(10)
 => "yTX35RzROS"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
