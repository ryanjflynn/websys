Ryan Flynn
flynnr3
Team 4
README:

Sources used:
	https://learn.jquery.com/plugins/basic-plugin-creation/
	http://www.w3schools.com/jquery/jquery_ref_html.asp

Questions:

1.)
	One advantage to writing a jQuery plugin as opposed to using regular JavaScript that uses 
	jQuery is that the finished code becomes more portable and efficient to implement in many 
	different scenarios. In addition, the code becomes simpler to maintain and apply changes or 
	modifications to in the future because the plugin itself only needs to be updated and the 
	instances where it is used will automatically reflect these updates.

2.)
	Our jQuery plugin adheres to best practices in JavaScript because in ways such as putting 
	declarations at the top of the code which provides just one place to look for variables. 
	Another is by initializing our vairables so as to avoid bugs or semantic errors from having
	undefined variables. In addition we used good spacing, included comments, and utilized functions
	for different kinds of tasks. 

3.)
	Nothing should be preventing us from POSTing high scores to a server on other domains.
	We could be storing our high score data as JSON and using some code such as:

	$.ajax({
	    type: "POST",
	    url: "<domain>",
	    dataType: "json"	
	    [...]
	})

	in order to send the data. This method would allow us to include data of not just the scores,
	but also data like name, dates, and difficulty used depending on how the JSON is created in 
	the plugin.

