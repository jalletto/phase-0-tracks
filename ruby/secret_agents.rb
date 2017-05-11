def encrypt(word)
  counter = 0

  while counter < word.length
    print word[counter].next
    counter += 1
  end

end

def decrypt(crypt)
  counter = 0
  alphabet = "abcdefghijklmnopqrstuvwz"

  while counter < crypt.length
    letter = crypt[counter]
    result = alphabet.index(letter)
    print alphabet[result - 1]
    counter += 1
  end
end






















