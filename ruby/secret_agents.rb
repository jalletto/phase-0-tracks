def encrypt(word)
  counter = 0

  while counter < word.to_s.length do
    new_letter = word[counter].next
    if new_letter == "aa"
      new_letter = "a"
    end
    print new_letter
    counter += 1
  end

end

def decrypt(crypt)
  count = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while count < crypt.to_s.length do
    letter = crypt[count]
    result = alphabet.index(letter)
    print alphabet[result - 1]
    count += 1
  end

end

puts encrypt("abc") #should return "bcd"
puts encrypt("zed") #should return "afe"
puts decrypt("bcd") #should return "abc"
puts decrypt("afe") #should return "zed"


puts decrypt(encrypt("swordfish"))
puts encrypt(decrypt("txpsegjti"))


valid_input = false
until valid_input do
  puts "Type D to decrypt a password. Type E to encrypt a password."
  opporation = gets.chomp


  if opporation == "D" || opporation == "d"
    puts "Enter password for decryption."
    decrypt(gets.chomp)
    valid_input = true
  elsif opporation == "E" || opporation == "e"
    puts "Enter password encryption."
    encrypt(gets.chomp)
    valid_input = true
  else
    valid_input = false
  end
end






















