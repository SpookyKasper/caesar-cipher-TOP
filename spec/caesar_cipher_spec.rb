
require_relative '../lib/caesar_cipher.rb'

describe CaesarCipher do

  subject(:cipher) { described_class.new}

  describe 'convert_to_unicode' do
    context 'when passed a lower case letter' do
      context 'when passed d' do
        it 'returns 100' do
          lower_case_letter = 'd'
          result = cipher.convert_to_unicode(lower_case_letter)
          expect(result).to eq(100)
        end
      end
    end

    context 'when passed an upper case letter' do
      context 'when passed D' do
        it 'returns 68' do
          letter = 'D'
          result = cipher.convert_to_unicode(letter)
          expect(result).to eq(68)
        end
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

