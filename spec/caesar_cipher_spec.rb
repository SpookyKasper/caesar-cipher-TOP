
require_relative '../lib/caesar_cipher.rb'

describe CaesarCipher do

  subject(:cipher) { described_class.new}

  describe 'convert_to_unicode' do
    context 'when passed a simple 3 letter message' do
      context 'when passed hot' do
        it 'returns an array of unicode values [104, 111, 116]' do
          message = 'hot'
          result = cipher.convert_to_unicode(message)
          expect(result).to eq([104, 111, 116])
        end
      end
    end

    context 'when passed an upper case simple message' do
      context 'when passed HOT' do
        it 'returns [72, 79, 84]' do
          message = 'HOT'
          result = cipher.convert_to_unicode(message)
          expect(result).to eq([72, 79, 84])
        end
      end
    end

    context 'when passed a diverse message' do
      context 'when passed Hello World!' do
        it 'returns [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33]' do
          message = 'Hello World!'
          result = cipher.convert_to_unicode(message)
          expectation = [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33]
          expect(result).to eq(expectation)
        end
      end
    end
  end

  describe '#is_lower_case?' do
    context 'when passed a lower case letter' do
      it 'returns true' do
        unicode = 'a'.ord
        result = cipher.is_lower_case?(unicode)
        expect(result).to be(true)
      end

      it 'returns true' do
        unicode = 'z'.ord
        result = cipher.is_lower_case?(unicode)
        expect(result).to be(true)
      end
    end

    context 'when passed something else' do
      it 'returns false' do
        unicode = 'A'.ord
        result = cipher.is_lower_case?(unicode)
        expect(result).to be(false)
      end

      it 'returns false' do
        unicode = ' '.ord
        result = cipher.is_lower_case?(unicode)
        expect(result).to be(false)
      end

      it 'returns false' do
        unicode = '!'.ord
        result = cipher.is_lower_case?(unicode)
        expect(result).to be(false)
      end
    end
  end

  describe '#is_upper_case?' do
    context 'when passed a lower case letter' do
      it 'returns true' do
        unicode = 'A'.ord
        result = cipher.is_upper_case?(unicode)
        expect(result).to be(true)
      end

      it 'returns true' do
        unicode = 'Z'.ord
        result = cipher.is_upper_case?(unicode)
        expect(result).to be(true)
      end
    end

    context 'when passed something else' do
      it 'returns false' do
        unicode = 'a'.ord
        result = cipher.is_upper_case?(unicode)
        expect(result).to be(false)
      end

      it 'returns false' do
        unicode = ' '.ord
        result = cipher.is_upper_case?(unicode)
        expect(result).to be(false)
      end

      it 'returns false' do
        unicode = '!'.ord
        result = cipher.is_upper_case?(unicode)
        expect(result).to be(false)
      end
    end
  end

  describe '#loops_alphabet' do
    context 'when going beyond the treshold takes out 26' do
      context 'when adding 3 to 120 with a thresold at 122' do
        it 'returns 97' do
          threshold = 122
          unicode = 120
          shift = 3
          result = cipher.loops_alphabet(threshold, unicode, shift)
          expect(result).to eq(97)
        end
      end

      context 'when adding 7 to 85 with a threshold at 90' do
        it 'returns 66' do
          threshold = 90
          unicode = 85
          shift = 7
          result = cipher.loops_alphabet(threshold, unicode, shift)
          expect(result).to eq(66)
        end
      end
    end

    context 'when not going beyond the threshold it just adds the shift' do
      context 'when adding 3 to 110 with a thresold at 122' do
        it 'returns 113' do
          threshold = 122
          unicode = 110
          shift = 3
          result = cipher.loops_alphabet(threshold, unicode, shift)
          expect(result).to eq(113)
        end
      end
    end
  end

  describe '#shift_letters' do
    context 'when passing [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33] with 3 as a shift factor' do
      it 'returns [75, 104, 111, 111, 114, 32, 90, 114, 117, 111, 103, 33]' do
        unicode_array = [72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33]
        shift_factor = 3
        result = cipher.shift_letters(unicode_array, shift_factor)
        expectation = [75, 104, 111, 111, 114, 32, 90, 114, 117, 111, 103, 33]
        expect(result).to eq(expectation)
      end
    end
  end

  describe '#caesar_cipher'  do
    context 'when passed a single letter' do
      context 'when passed letter d and number 3' do
        it 'returns g' do
          letter = 'd'
          shift_factor = 3
          result = cipher.caesar_cipher(letter, shift_factor)
          expect(result).to eq('g')
        end
      end

      context 'when passed letter e and number 3' do
        it 'returns h' do
          letter = 'e'
          shift_factor = 3
          result = cipher.caesar_cipher(letter, shift_factor)
          expect(result).to eq('h')
        end
      end
    end
  end
end

