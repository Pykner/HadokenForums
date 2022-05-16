var coll = document.getElementsByClassName("tabcollapse");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var whatisnewtxt = this.getElementsByClassName("whatisnewtxt").first;
    if (whatisnewtxt.style.maxHeight){
      whatisnewtxt.style.maxHeight = null;
    } else {
      whatisnewtxt.style.maxHeight = whatisnewtxt.scrollHeight + "px";
    }
  });
}

