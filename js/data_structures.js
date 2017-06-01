var colors = ["red", "blue", "green", "cucumber"];
var horseNames = ["Sparkle Mane", "Mildew", "Rainshine", "Mug"];

colors.push("Sunset Blue");
horseNames.push("Ed");

console.log(colors);
console.log(horseNames);

function objectMaker(array1, array2) {
  var newObject = {};
  if (array1.length == array2.length){
    // New object, horseNames = keys, colors = values
    for (var i = array1.length - 1; i >= 0; i--){
      newObject[array1[i]] = array2[i];
    }
    return newObject;
  }
  else {
    return "These arrays are not the same size";
  }
}

console.log(objectMaker(horseNames, colors));



function Car(color, age, isConvertible){
  this.color = color;
  this.age = age;
  this.isConvertible = isConvertible;
  this.honk = function() {console.log("*Honk*");};
}

var newCar = new Car("red", 5, "true");
var blueCar = new Car("blue", 4, false);
var grampasCar = new Car("tan", "ancient", true);


console.log(newCar);
console.log(blueCar);
console.log(grampasCar);
newCar.honk();