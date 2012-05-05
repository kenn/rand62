require 'rand62'

class String
  BASE62_MAP = Hash[Rand62::CHARS.map.with_index{|c,i| [c, i] }]

  def base62
    i = 0
    i_out = 0
    self.split(//).reverse.each do |c|
      place = 62 ** i
      i_out += BASE62_MAP[c] * place
      i += 1
    end
    i_out
  end
end

class Integer
  def base62
    return '0' if (i = self) == 0
    s = ''
    while i > 0
      s << Rand62::CHARS[i.modulo(62)]
      i /= 62
    end
    s.reverse!
    s
  end
end
