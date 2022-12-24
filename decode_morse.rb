MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end
puts decode_char('.-')

def decode_word(word)
  split_word = ''
  word.split.each { |n| split_word += decode_char(n) }
  split_word
end
puts decode_word('-- -.--')


def decode(sentence)
  words = sentence.split('   ')
  message = ''
  words.each { |n| message += "#{decode_word(n)} " }
  message
end

puts decode('-- -.--   -. .- -- .')
puts decode(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
