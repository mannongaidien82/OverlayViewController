var isMobile = false;
$(document).ready(function () {
	//For performance!
	// document.getElementById("parent").onclick = function (e) {
	//     //We only want events on the spans, so let's check that!
	//     if (e.target.tagName.toLowerCase() == "span") {
	//         this.className = "parent__clicked";
	//   }
	// };
	document.onkeypress = enter;
});

function enter(e) {
  if (e.which == 13) { 
  	console.log("key 13");
  	testMobile();
  }
}

function testMobile() {
	if(isMobile) location.href = "";
}

var clickedSpan = "";

function isEmpty(str) {
        return (typeof(str) === "undefined" || str.length == 0);
}

function setBGColor(e, c) {
	e.style.backgroundColor = c;
}

function red(e) {
    e.style.backgroundColor = "red";
    if(!isEmpty(clickedSpan)) {
    	clickedSpan.style.backgroundColor = "white";
    }
    clickedSpan = e;
}

function blue(e) {
	e.style.backgroundColor = "blue";
	if(!isEmpty(clickedSpan)) {
    	clickedSpan.style.backgroundColor = "white";
    }
    clickedSpan = e;
}


function yellow(e) {
	e.style.backgroundColor = "yellow";
	if(!isEmpty(clickedSpan)) {
    	clickedSpan.style.backgroundColor = "white";
    }
    clickedSpan = e;
}

