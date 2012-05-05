require 'rand62/version'
require 'securerandom'

class Rand62
  CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a

  class << self
    def safe(n)
      n.times.map{ CHARS[SecureRandom.random_number(62)] }.join
    end

    def fast(n)
      n.times.map{ CHARS.sample(1) }.join
    end
  end
end
