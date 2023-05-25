



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

  def shift_letters(unicode_array, shift_factor)
    unicode_array.map do |value|
      if is_upper_case?(value)
        loops_alphabet(90, value, shift_factor)
      elsif is_lower_case?(value)
        loops_alphabet(122, value, shift_factor)
      else
        value
      end
    end
  end

  def caesar_cipher(message, shift_factor)
    unicode_array = convert_to_unicode(message)
    coded = shift_letters(unicode_array, shift_factor)
    letter_array = coded.map { |v| v.chr }
    coded_message = letter_array.join
  end
end


my_cipher = CaesarCipher.new

p my_cipher.caesar_cipher('What a string!', 5)

