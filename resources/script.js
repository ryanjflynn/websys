$(document).ready(function() {
  $.ajax({
    type: "GET",
    url: "/resources/projects.xml",
    dataType: "xml",
    success: function(xml) {
      $(xml).find('project').each(function() {
        var names = $(this).find('name').text();
        var locations = $(this).find('location').text();
        var descriptions = $(this).find('description').text();

        $("<li></li>").html('<a href="' + locations + '">' + names +
                            ':</a>\t' + descriptions).appendTo('#projects');

        $("<li></li>").html('<a href="' + locations + '">' + names +
                            '</a>\t').appendTo('.sidebar-nav');
      });
    }
  });
});
