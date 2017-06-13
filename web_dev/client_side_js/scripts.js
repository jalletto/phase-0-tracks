var h1 = document.getElementById("title");
var link = document.getElementsByTagName("a");

function enlarge(event) {
  event.target.style.fontSize = '100px';
}

function changeColor(event) {
  if (event.target.style.color == 'rgb(0, 0, 0)') {
    event.target.style.color = 'rgb(244, 66, 66)';
  } else if (event.target.style.color == 'rgb(244, 66, 66)') {
    event.target.style.color = 'rgb(0, 0, 0)';
  }
}

h1.addEventListener("click", changeColor);
link[0].addEventListener("mouseover", enlarge);