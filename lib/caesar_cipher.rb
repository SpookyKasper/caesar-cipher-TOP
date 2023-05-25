



class CaesarCipher
  LOWERCASE_RANGE = [97..122]
  UPERCASE_RANGE = [65..90]

  def convert_to_unicode(message)
    splitted_message = message.split("")
    splitted_message.map { |v| v.ord }
  end

  def shift_letters(unicode_array) do
    unicode_array.map { |v| v.between()}
  end

  def caesar_cipher(message, shift_factor)
    'g'
  end
end
