var coll = document.getElementsByClassName("tabcollapse");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var whatisnewtxt = this.nextElementSibling;
    if (whatisnewtxt.style.display === "block") {
        whatisnewtxt.style.display = "none";
    } else {
        whatisnewtxt.style.display = "block";
    }
  });
}
