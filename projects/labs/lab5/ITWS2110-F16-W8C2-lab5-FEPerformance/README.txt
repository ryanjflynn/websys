Lab 5 README
Ryan Flynn 
flynnr3

Part 1:
	This function:
		$("#foo").click(function(e) {
					if(e.target.tagName == "LI") {
						$(e.target).hide(400);
					}
				});
	was added to the script in order to use event delegation instead of
	adding listeners to each of the <li> children.

Part 2:
	Optimaztions that I found/included:

	1.)Using efficient selectors (being specific with fewest selectors).
		I changed the selection:
			$("div.bar ul#foo")
		to become:
			$("#foo")
		This achieves the same selection without looking over the DOM as much.

	2.)Moving the JavaScript to the bottom
		I moved the <script></script> to the bottom of the document 
		"JavaScript downloads will block all other parallel downloads"

	3.)Moving CSS to the top
		I moved the CSS <stlye> to the top of the document. This allows 
		the page to be rendered more progressively as the other parts 
		of the page are loaded.

	4.)Use CSS instead of images.
		I switched the use of the background image of the blue square 
		to be achieved with CSS instead. The image was static and simple
		so using a hex code for an equivalent background in CSS is more 
		efficient because "images almost always introduce more overhead."

	5.)DOM access
		I set a variabled for the #foo DOM element because it is used more 
		than once in the script (only twice, but its the principle). This means
		that the DOM is accessed each time during the $("#foo") call. So I used
			var obj = $("#foo");
		and replaced the $("#foo") calls in the functions to work on the obj variable
		instead. Now the DOM is accessed once to get this element. If foo were something less specific like a class, and there were more calls, this 
		would be a more drastic change.

	6.)Minimize markup
		I removed the surrounding <div> that was within the html body around the other
		elements. This element was not being used for styling or in the script, and
		extra DOM elements mean that JavaScript/CSS selectors must search harder to 
		find the elements they need. (again, minimal, but its the principle).

	Overall, these performance enhancements pertain to improving user experience
	because they are involved in the front-end and are often utilizing the client's
	own CPU power. This is typically inconsistent in a large audience of users 
	and therefore optimizations for less processing ensure that users with lower
	performance/connnections can access still content with minimal issue.

	For creativity I added strikethroughs to clicked <li>'s so you can tell which
	items you have clicked. I also added a button to get rid of the strikethroughs.