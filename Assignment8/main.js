
var clicked = false;
var numChild = 5;
var itemW = 100;
var counter = 0;

$("#links > div").each(function(){
var counter = 0;
  $(this).css({
    "width":"0px",
    "left": "-" + itemW*counter
  });
  counter++;
});

$("#menu").click(function(){
  var deg = clicked ? 0:30; //menu rotate
  var top = clicked ? 0:-30; //menu top
  var left = clicked ? 0:-10; //menu left
  var width = clicked ? 0 :100; //link div width
  var margLeft = clicked ? 0:100; //link div left
  var bulletTop = clicked ? 0: -55; //bullet top
  $(this).css({
    "transform":"rotate(-"+ deg +"deg)",
    "top": top+"px",
    "left":left +"px"
  });
  $("#bullet").css({
    "top": bulletTop
  });
  var count = 1;
  $("#links > div").each(function(){
    $(this).css({
      "width": width,
      "left": margLeft*count
    });
    count++;
  });
  clicked = !clicked;
});

$("#item-1").click(function(){
  $("#bullet").removeClass();
  $("#bullet").addClass("arc");
});

$("#item-2").click(function(){
  $("#bullet").removeClass();
  $("#bullet").addClass("arc2");
});

$("#item-3").click(function(){
  $("#bullet").removeClass();
  $("#bullet").addClass("arc3");
});

$("#item-4").click(function(){
  $("#bullet").removeClass();
  $("#bullet").addClass("arc4");
});

$("#item-5").click(function(){
  $("#bullet").removeClass();
  $("#bullet").addClass("arc5");
});
