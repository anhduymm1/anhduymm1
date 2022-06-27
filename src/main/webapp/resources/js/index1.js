 function Click(){
  var in4 = document.getElementById("i4")
// in4.scrollIntoView({behavior: "smooth", block: "center", inline: "nearest"});
    console.log(in4.offsetTop)
   window.scrollTo(0,in4.offsetTop+10);
}
function ModalClick(){
  var modal = document.getElementById("myModal");
  modal.style.display = "block";
}
function CloseModal(){
   var modal = document.getElementById("myModal");
  modal.style.display = "none";
  
}
