



class CaesarCipher

  def convert_to_unicode(message)
    splitted_message = message.split("")
    splitted_message.map { |v| v.ord }
  end

  def is_letter?(unicode)
    unicode.between?(97, 122) || unicode.between?(65, 90)
  end

  def caesar_cipher(message, shift_factor)
    'g'
  end
end
