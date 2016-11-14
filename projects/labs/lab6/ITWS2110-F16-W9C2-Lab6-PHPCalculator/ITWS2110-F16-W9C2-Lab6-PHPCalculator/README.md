README

Ryan Flynn
flynnr3


"Explain what each of your classes and methods does, the order in which methods are 
invoked, and the flow of execution after one of the operation buttons has been clicked."

	Each of the classes that I added are subclasses that extend the Operation
	class similar to how the Add class was provided. Once an operation has been
	clicked, that value is used to instantiate a new object. In <pre>, that object's 
	getEquation method is called which also calls on the operate() function of the 
	corresponding subclass to return/output the result to the document. 


"Also explain how the application would differ if you were to use $_GET, and why this may or may not be preferable."

	The application would be different if it were to use $_GET because the it would then 
	store the values from the form in the URL, making a distinct version of the page for
	any particular form inputs. This may be preferable if a user wanted to share a webpage
	with particular form data (i.e. calculations) to another person, because the URL they
	share would reflect that data. However, once a page is refreshed or re-visited with $_POST,
	it may ask for resubmission of the data or not be carried over at all.
	

"Finally, please explain whether or not there might be another (better +/-) way to determine which button has been pressed and take the appropriate action."

	I'm not sure if this counts, but maybe instead of checking if a $_POST is set for a particular 
	button name and then seeing if it's value is that operation, maybe all the buttons could be of
	a generic name and just that could be checked and then examined for what its value is. I think
	you would still need several if statements for this though.


NOTES:

	I edited the Operation class constructor slightly so that instead of throwing an 
	exception if one of the operands is non-numeric, any non-numeric operands are just
	converted to zero. This also makes the factorial button more robust.

	The factorial operation just reads from the first operand, the second operand is ignored.
