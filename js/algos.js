var phrases = ["long phrase","longest phrase","longer phrase"]
var otherWords = ["quarter", "buzz","zonk","nitrate"]



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

retrieveLongest(phrases)
retrieveLongest(otherWords)