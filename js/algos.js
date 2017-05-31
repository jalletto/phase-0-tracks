
//Functions
function retrieveLongest(array) {
  var longestArrayItem = "";

  for(var i = array.length - 1; i >= 0; i -= 1){

    if(array[i].length > longestArrayItem.length){
      longestArrayItem = array[i];
      } else if (array[i].length == longestArrayItem.length){
      longestArrayItem += " " + array[i]
      }
  }
  console.log(longestArrayItem)
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
  console.log(match)
}

function createRandomArray(arrayLength){
  newArray = []
  for(var i = arrayLength; i >= 0; i -= 1){
    newArray.push()
  }

}

//Driver Code

//retrieveLongest
var phrases = ["long phrase","longest phrase","longer phrase"]
var otherWords = ["quarter", "buzz","zonk","nitrate"]

retrieveLongest(phrases)
retrieveLongest(otherWords)

//keyValueMatch
var steve = {name: "Steven", age: 54, weight: 200, shoes: false};
var tamir = {name: "Tamir", age: 54, weight: 190, shoes: true};
var fido = {animal: "Dog", legs: 4};
var pepsi = {animal: "Dog", legs: 3};

keyValueMatch(steve, tamir)
keyValueMatch(fido, pepsi)
keyValueMatch(fido, tamir)

// createRandomArray