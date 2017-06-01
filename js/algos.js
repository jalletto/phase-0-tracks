
//Functions----------------------

function retrieveLongest(array) {
  var longestArrayItem = "";

  for(var i = array.length - 1; i >= 0; i -= 1){

    if(array[i].length > longestArrayItem.length){
      longestArrayItem = array[i];
      } else if (array[i].length == longestArrayItem.length){
      longestArrayItem += " " + array[i]
      }
  }
  return longestArrayItem
}


function keyValueMatch(objectOne, objectTwo){
  var match = false
  for( var key in objectOne){
    for(var otherKey in objectTwo){
      if(key == otherKey && objectOne[key] == objectTwo[key]){
         match = true;
      }
    }
  }
  return match
}

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

function randomeWordGenerator(){
  var wordLength = getRandomInt(1, 10);
  var newString = "";
  for(i = wordLength; i >= 0; i -= 1){

    var alphabet = "abcdefghijklmnopqrstuvwxyz"
    letter = alphabet.charAt(getRandomInt(0, 26))
    newString += letter

  }
   return newString
}


function createRandomArray(arrayLength){

  var newArray = []
  for(var i = arrayLength - 1; i >= 0; i -= 1){
    newArray.push(randomeWordGenerator())
  }
  return newArray
}

//Driver Code------------------------------------------

// generates an array, prints the array, feeds the array to your "longest word" function, and prints the result

// I had used 'i' in this loop just like the others but it kept creating an infinite loop. I messed with it for an hour before I changed 'i' to 'loop' because I was out of ideas and it worked. Any idea why this might have been? Was the loop somehow accessing 'i' variables from the functions?

for(var loop = 0; loop < 10; loop ++){

  var coolNewArray = createRandomArray(3);
  console.log(coolNewArray);
  console.log(retrieveLongest(coolNewArray));

}


//retrieveLongest----------------------------------

// var phrases = ["long phrase","longest phrase","longer phrase"]
// var otherWords = ["quarter", "buzz","zonk","nitrate"]

// retrieveLongest(phrases)
// retrieveLongest(otherWords)

//keyValueMatch--------------------------------

// var steve = {name: "Steven", age: 54, weight: 200, shoes: false};
// var tamir = {name: "Tamir", age: 54, weight: 190, shoes: true};
// var fido = {animal: "Dog", legs: 4};
// var pepsi = {animal: "Dog", legs: 3};

// keyValueMatch(steve, tamir)
// keyValueMatch(fido, pepsi)
// keyValueMatch(fido, tamir)

// createRandomArray------------------------------

// createRandomArray(3)
// createRandomArray(30)