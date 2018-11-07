
/* log in & register page */
function register(){
  document.getElementById("loginin").style.left = "-450px";
  document.getElementById("log").style.opacity = "0";
  document.getElementById("log2").style.opacity = "1";
  document.getElementById("log").style.WebkitTransition = 'all 0.5s';
  document.getElementById("log").style.MozTransition = 'all 0.5s';
  document.getElementById("log2").style.WebkitTransition = 'all 0.5s';
  document.getElementById("log2").style.MozTransition = 'all 0.5s';
}

function moveback() {
  document.getElementById("loginin").style.left = "0px";
  document.getElementById("log").style.opacity = "1";
  document.getElementById("log2").style.opacity = "0";
}
