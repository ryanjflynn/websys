$('#site').click(function() {
  $.ajax({
    type: "GET",
    url: "lab4.json",
    dataType: "json",
    success: function(responseData, status) {
      var output = '<ul class="songEntry">';
      $.each(responseData.Students, function(i, song) {
        output += '<li class="track" id="favorite"><p>' + song.track + '</p></li>';
        output += '<li class="artist"><p>' + song.artist + '</p></li>';
        output += '<li class="album"><p><a href="' + song.albumURL + '">' + song.album + '</a></p></li>';
        output += '<li class="release"><p>' + song.release + '</p></li>';
        output += '<li class="genre"><p>' + song.genre +  '</p></li>';
        output += '<li class="cover"><p><img src="' + song.albumArtURL + '"></p></li>';
        output += "</ul>";
      });

      $("ul").after(output);
    },
  });
});
