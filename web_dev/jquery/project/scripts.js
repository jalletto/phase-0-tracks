
var myImage = document.querySelector('img');
var heading = $('h1');
heading.html("get lost");


myImage.onclick = function() {
  var mySrc = myImage.getAttribute('src');
  if(mySrc === 'fall-autumn-red-season.jpg') {
      myImage.setAttribute ('src',"download.jpg");
  } else {
      myImage.setAttribute ('src',"fall-autumn-red-season.jpg");
    }

}

var myButton = document.querySelector('button');
var myHeading = $( "h1" );



$( "p" ).hide( "slow" );




