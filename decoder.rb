def decoder(letter_morse)
  dictionary = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '.----' => '1',
    '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
    '---..' => '8', '----.' => '9', '-----' => '0'
  }
  dictionary[letter_morse]
end

def char_splitter(word)
  array = word.split(/ /)
  word = ''
  array.each do |char|
    word = "#{word}#{decoder(char)}"
  end
  word
end

def word_splitter(phrase)
  array = phrase.split(/   /)
  phrase = ''
  array.each do |word|
    phrase = "#{phrase}#{char_splitter(word)} "
  end
  phrase
end
