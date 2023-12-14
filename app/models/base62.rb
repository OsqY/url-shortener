class Base62
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length
  def self.encode(number)
    return ALPHABET[0] if number.zero? || number.nil?
    result = ""

    while number > 0 do
      index = number % BASE
      char = ALPHABET[index]
      result.prepend char

      number = number / BASE
    end

    result
  end

  def self.decode(string)

  end
end