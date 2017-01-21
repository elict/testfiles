
  
  
  
  

var head = $("h1"),
      content = $("#content"),
    subhead = $("h2"),
    feature = $("#feature"),
    description = $("#description"),
    icons = $("#nav img");

var $box2 = $('#box2');	
var $miniBox2 = $('#miniBox2');
var $miniCube1 = $('#miniCube1');
var $miniCube2 = $('#miniCube2');
var $miniCube3 = $('#miniCube3');
var $miniCube4 = $('#miniCube4');
var $miniCube5 = $('#miniCube5');
var $miniCube6 = $('#miniCube6');
var $miniCube7 = $('#miniCube7');
var $miniCube8 = $('#miniCube8');
var $miniCube9 = $('#miniCube9');
var $miniCube10 = $('#miniCube10');
var $miniCube11 = $('#miniCube11');
var $miniCube12 = $('#miniCube12');
var $button3 = $('#button3');
var $button4 = $('#button4');
var randX;
TweenLite.set(content, {visibility:"visible"})
var count2 = 2;
//instantiate a TimelineLite   
var speedVar = 2;
var xShake1 = -50;
var xShake2 = -50;

var tl = new TimelineLite();
var setTimeoutDelay = 2000;

	 
	 

tl.pause();
randX = Math.floor(Math.random() * (600 - (0)) + (0));

//tl.from($miniCube2, 0.5, {left:randX, opacity:0});

//TweenLite.to($box2, 2.0, {y:500, opacity:0, delay: 1});
//tl.to($miniBox2, 1.0, {y:100, opacity:0, delay: 1});
tl.to($button3, 2, {x:-120, opacity:0})
.to($button4, 2, {x:100, opacity:0}, 0)
//.to($miniCube1, 2.5, {rotation:360, transformOrigin:"100px"})
.to($miniCube2, 3, {rotation:200, y:200, opacity:1, transformOrigin:"100px"})
.to($miniCube3, 3, {rotation:200, y:-200, opacity:1,  transformOrigin:"100px"}, "-=2.5")
.to($miniCube4, 3, {rotation:150, y:-300, opacity:1, transformOrigin:"100px"}, "-=3.5")
.to($miniCube5, 3, {rotation:90, y:-120, opacity:1, transformOrigin:"100px"}, "-=3.5")
.to($miniCube6, 3, {rotation:270, y:260, opacity:1, transformOrigin:"100px"}, "-=3.5")
.to($miniCube7, 4, {rotation:-270, y:-260, opacity:1, transformOrigin:"-100px"}, "-=3.5")
.to($miniCube8, 4, {rotation:270, y:260, opacity:1, transformOrigin:"-100px"}, "-=3.5")
.to($miniCube9, 4, {rotation:-180, y:-260, opacity:1, transformOrigin:"-100px"}, "-=3.5")
.to($miniCube10, 4, {rotation:120, y:170, opacity:1, transformOrigin:"-100px"}, "-=3.5")
.to($miniCube11, 4, {rotation:-210, y:70, opacity:1, transformOrigin:"-100px"}, "-=3.5")
.to($miniCube12, 4, {rotation:190, y:170, opacity:1, transformOrigin:"-100px"}, "-=3.5")
//add another tween immediately after
//tl.from(subhead, 0.5, {left:-100, opacity:0});

//use position parameter "+=0.5" to schedule next tween 0.5 seconds after previous tweens end
//tl.from(feature, 0.5, {scale:.5, autoAlpha:0}, "+=0.5");
//tl.to($miniBox2, 2.0, {y:100, opacity:0, delay: 1});
//use position parameter "-=0.5" to schedule next tween 0.25 seconds before previous tweens end.
//great for overlapping
//tl.from(description, 0.5, {left:100, autoAlpha:0}, "-=0.25");

//add a label 0.5 seconds later to mark the placement of the next tween
//tl.add("stagger", "+=0.5")
//to jump to this label use: tl.play("stagger");

//stagger the animation of all icons with 0.1s between each tween's start time
//this tween is added
//tl.staggerFrom(icons, 0.2, {scale:0, autoAlpha:0}, 0.1, "stagger");

/* --- Control playback methods --- */
//window.alert("timerStarted5s");
//setTimeout(function() { restartTL(); }, 5000);

/*
$("#play").click(function() {
        tl.play();
});
        
$("#pause").click(function() {
        tl.pause();
});
        
$("#reverse").click(function() {
        tl.reverse();
});
        
$("#resume").click(function() {
        tl.resume();    
});

$("#stagger").click(function() {
        tl.play("stagger"); 
});
        
$("#restart").click(function() {
        tl.restart();
});
*/
//when the timeline updates, call the updateSlider function
tl.eventCallback("onUpdate", updateSlider);
    
$("#slider").slider({
  range: false,
  min: 0,
  max: 100,
  step:.1,
  slide: function ( event, ui ) {
    tl.pause();
    //adjust the timeline's progress() based on slider value
    tl.progress( ui.value/100 );
    }
}); 
        


tl.progress(1)



function updateSlider() {
  $("#slider").slider("value", tl.progress() *100);
}  
function mouseOver2() {
	
	if (count2 < 3) {
	
	TweenLite.to($box2, speedVar, {y:505, x: xShake1});
	
	setTimeout(mouseOver3, setTimeoutDelay);
	}
}


function mouseOver3() {
	if (count2 < 3) {
	
	TweenLite.to($box2, speedVar, {y:500, x: xShake2});
	setTimeout(mouseOver2, setTimeoutDelay);
	}
}

function killOnClick() { 

document.getElementById('box2').style.opacity = 0;
document.getElementById('box2').style.left = 0;
document.getElementById('box2').style.top = 0;
window.alert("test");

}

function opacityOnClick() {
	
	
	document.getElementById('box2').style.opacity = 1;
	
	
	
}

function mouseOverGrey() {
	
	tl.pause();
	//TweenLite.to($miniCube1, 2.5, {rotation:360, transformOrigin:"100px", delay:1});
	//TweenLite.to($miniCube2, 4, {rotation:200, y:200, transformOrigin:"100px", delay:1});
   // TweenLite.to($miniCube3, 4, {rotation:200, y:-200, transformOrigin:"100px", delay:1});
	//TweenLite.from($miniCube3, 4, {rotation:200, y:-200, transformOrigin:"100px", delay:6});
}

function mouseOverGrey2() {
	tl.play();
	
	
	
}

function mouseOverGrey3() {
	tl.pause();
	tl.reverse();
	
	
	
}

function mouseOver4() {
	
	speedVar = 0.15;
	setTimeoutDelay = 100;
	xShake1 = -47;
	xShake2 = -53;
	//TweenLite.to($box2, 2, {y:1000});
	//count2 = 4;
}

function mouseOut4() {
  speedVar = 2.5;
  xShake1 = -50;
  xShake2 = -50;
  setTimeoutDelay = 2000;
  
}