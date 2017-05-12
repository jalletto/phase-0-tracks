def encrypt(word)
  counter = 0

  while counter < word.length do
    new_letter = word[counter].next
    if new_letter == "aa"
      new_letter = "a"
    end
    print new_letter.to_s
    counter += 1
  end

end

def decrypt(crypt)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwz"

  while counter < crypt.length do
    letter = crypt[counter]
    result = alphabet.index(letter)
    print alphabet[result - 1]
    counter += 1
  end

end

# puts encrypt("abc") #should return "bcd"
# puts encrypt("zed") #should return "afe"
# puts decrypt("bcd") #should return "abc"
# puts decrypt("afe") #should return "zed"

# decrypt(encrypt("swordfish")) I actually can't get this to work right at all.

puts "Type D to decrypt a password. Type E to encrypt a password."
opporation = gets.chomp

if opporation == "D" || opporation == "d"
  puts "Enter password for decryption."
  decrypt(gets.chomp)
elsif opporation == "E" || opporation == "e"
  puts "Enter password encryption."
  encrypt(gets.chomp)
end






















