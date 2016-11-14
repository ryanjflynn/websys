$(document).ready(function() {
  //put all the code in here
});

<script src="filepath/jquery.js"></script>

//Selection
$("h1") - selects all <h1> elements
$("p.fname") - selects all <p> with the class = "fname"
$("h2#lname") - selects the <td> with the id = "lname"
$("#contact") - selects all elements with id = "contact"

//Style manipulation
$("h1").css({"background-color":"yellow","font- size":"200%"})

//HTML manipulation
.addClass() - lets you add one or more classes to the element
.html() - sets or returns the content (innerHTML) of a element
.before() - adds content before the given element
.val() - sets or gets the value of a (form) element

//Events
jq("p").click(function() {
	alert("I am the p element");
});
jq("#addP").click(function() {
	jq("h1").after("<p>I am a new p element!</p>");
});
jq("#bind").click(function() {
	jq(document).on( "click", "p", function(event) { alert("I got binded!") });
});

//callback
$(document).ready(function() {
    /* Without using the callback function */ //alert goes before it is hidden
    $("button#button1").click(function() {
        $("p#p1").hide(1500);
        alert("The paragraph is now hidden");
    });
    /* With using the callback function */
    $("button#button2").click(function() {  //alert waits until hidden
        $("p#p2").hide(1500,function(){
          alert("The paragraph is now hidden");
        });
    });


    
