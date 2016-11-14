$('#site').click(function(e) {
  $.getJSON('lab4.json', function(data) {
    $.each(data.songs, function(key, song) {
      //create a string to place all the JSON data and necessary HTML information
      var output = '<ul class="songEntry">';

      //collect data into string
      output += '<li class="track"><p>' + song.track + '</p></li>';
      output += '<li class="artist"><p>' + song.artist + '</p></li>';
      output += '<li class="album"><p><a href="' + song.albumURL + '">' + song.album + '</a></p></li>';
      output += '<li class="release"><p>' + song.release + '</p></li>';
      output += '<li class="genre"><p>' + song.genre +  '</p></li>';
      output += '<li class="cover"><p><img src="' + song.albumArtURL + '"></p></li>';
      output += "</ul>";

      //place the string into the HTML doc 
      $("#load").before(output);
    });
  });
  //remove the button and update the label
  $('#site').remove();
  $('#label').text("All Songs Loaded");
});
