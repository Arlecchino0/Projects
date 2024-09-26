def cipher(key)
  @key = key
  String input = gets.chomp
  numVer = input.upcase.chars.map {|char| char.ord - 'A'.ord}
  cipherText = numVer.map{|num| (num + key)%26}
  puts cipherText.inspect

  encodedText = cipherText.map{|num| (num + 64).chr}

  puts encodedText.inspect
end

cipher(12)
