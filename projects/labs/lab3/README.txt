Ryan Flynn
Lab3 Javascript

Part1:
	I wrote a recursive function to iterate through the elements in the DOM. The children of
	each element node are sent into the recursion and what they return is appended to one 
	main string.
	Outside the function, the HTML tag is established as the root and the function is called 
	on it. The resulting string is then placed into the "info" id tag at the beginning of the 
	document.
	
Part 2:
	Within the recursive function I added event listeners of type "click" to each element that
	is discovered. These listeners call a different function which simply alerts the current 
	tagName. This is default to bubble up through the parent elements to the root.
	
Part 3:
	I added more event listeners within the recursive function on the condition that they 
	are <div> elements. These listen for the mouseover and mouseout events and call functions
	which change the background color and element padding in order to achieve the desired CSS
	manipulations. Additionally, cloneNode and appendChild commands were used in lines outside 
	the function to clone one of the "quote" divs and add to the bottom of the document. 