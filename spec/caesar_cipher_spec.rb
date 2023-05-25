
require_relative '../lib/caesar_cipher.rb'

describe CaesarCipher do

  subject(:cipher) { described_class.new}

  describe '#caesar_cipher'  do
    context 'when passed a single letter' do
      context 'when passed letter d and number 3' do
        it 'returns g' do
          letter = 'd'
          number = 3
          result = cipher.caesar_cipher(letter)
          expect(result).to eq('g')
        end
      end
    end
  end
end

