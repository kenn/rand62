require 'rand62/core_ext'
require 'test/unit'
require 'set'

class TestRand62 < Test::Unit::TestCase
  def measure
    start = Time.now
    yield
    Time.now - start
  end

  def test_rand62
    assert_match Rand62.safe(1000), /^[0-9a-zA-Z]+$/
    assert_match Rand62.fast(1000), /^[0-9a-zA-Z]+$/
  end

  def test_distribution
    set = Set.new
    rand62 = Rand62.safe(1000)

    rand62.split(//).each do |char|
      set.add(char)
    end

    assert_equal 1000, rand62.size
    assert_equal 62, set.size
  end

  def test_core_ext
    assert_equal 1000000000.base62, '15ftgG'
    assert_equal '15ftgG'.base62, 1000000000

    assert_equal '123abcABC'.base62, 225587272106046
    assert_equal 225587272106046.base62, '123abcABC'
  end

  def test_benchmark
    n = 1000

    fast = measure { Rand62.fast(n) }
    safe = measure { Rand62.safe(n) }

    puts "Rand62.fast(#{n}): #{fast}"
    puts "Rand62.safe(#{n}): #{safe}"
    assert fast < safe
  end
end
