// Take a word as an argument. Loop backwards through the word placing each letter in a new variable. Print the new variable.

function reverse(word) {

  var newString = '';

  for (var i = word.length - 1; i >= 0; i-=1) {
     newString += word[i];

  }

  console.log(newString)

}

  var love = 0;
  var potatoChips = 0;

  if (love == potatoChips) {
    reverse("Booger");
  }

