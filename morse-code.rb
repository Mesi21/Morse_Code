class Decoder
  def char_decode(c)
    chart = {
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
    }
    return chart[c]
  end
  def word_decoder(word)
    arr = word.split
    res = ''
    arr.each do |l|
      res += char_decode(l) 
    end
    
    return res
  end
  def text_decoder(str)
    arr = str.split('  ')
    res = ''
    arr.each do |word|
      res += "#{word_decoder(word)} "
    end
    return res
  end
end

puts 'Enter morse code!'
decoder = Decoder.new
coded_message = gets.chomp
puts decoder.text_decoder(coded_message)
