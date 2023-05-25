
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

  describe '#is_letter?' do
    context 'when passed a letter' do
      it 'returns true' do
        unicode = 'a'.ord
        result = cipher.is_letter?(unicode)
        expect(result).to be(true)
      end

      it 'returns true' do
        unicode = 'Z'.ord
        result = cipher.is_letter?(unicode)
        expect(result).to be(true)
      end
    end

    context 'when passed something else' do
      it 'returns false' do
        unicode = ' '.ord
        result = cipher.is_letter?(unicode)
        expect(result).to be(false)
      end

      it 'returns false' do
        unicode = '!'.ord
        result = cipher.is_letter?(unicode)
        expect(result).to be(false)
      end
    end
  end

  describe '#caesar_cipher'  do
    context 'when passed a single letter' do
      context 'when passed letter d and number 3' do
        xit 'returns g' do
          letter = 'd'
          shift_factor = 3
          result = cipher.caesar_cipher(letter, shift_factor)
          expect(result).to eq('g')
        end
      end

      context 'when passed letter e and number 3' do
        xit 'returns h' do
          letter = 'e'
          shift_factor = 3
          result = cipher.caesar_cipher(letter, shift_factor)
          expect(result).to eq('h')
        end
      end
    end
  end
end

