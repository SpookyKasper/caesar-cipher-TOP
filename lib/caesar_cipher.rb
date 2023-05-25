



class CaesarCipher

  def convert_to_unicode(message)
    splitted_message = message.split("")
    splitted_message.map { |v| v.ord }
  end

  def is_lower_case?(unicode)
    unicode.between?(97, 122)
  end

  def is_upper_case?(unicode)
    unicode.between?(65, 90)
  end

  def loops_alphabet(threshold, number, shift)
    result = number + shift
    result > threshold ? result - 26 : result
  end

  def shift_letters(unicode_array)
  end

  def caesar_cipher(message, shift_factor)

  end
end
