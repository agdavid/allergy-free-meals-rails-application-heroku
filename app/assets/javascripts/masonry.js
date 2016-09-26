$(function() {

    $('#recipes').imagesLoaded(function() {
      $('#recipes').masonry({
        itemSelector: '.box',
        isFitWidth: true,
        });
      });

    $('#favorited-recipes').imagesLoaded(function() {
        $('#favorited-recipes').masonry({
          itemSelector: '.box',
          isFitWidth: true,
          });
        });

    $('#users').imagesLoaded(function() {
        $('#users').masonry({
          itemSelector: '.box',
          isFitWidth: true,
          });
        });

    $('#page-refresh').click(function() {
      var url = "https://allergyfreemeals.herokuapp.com/";
      window.location.href = url;
      location.reload(true);
    });
    
});


// $ ->
//   $('#recipes').imagesLoaded ->
//     $('#recipes').masonry({
//       itemSelector: '.box',
//       isFitWidth: true
//     });
// $ ->
//   $('#favorited-recipes').imagesLoaded ->
//     $('#favorited-recipes').masonry({
//       itemSelector: '.box',
//       isFitWidth: true
//     });
// $ ->
//   $('#users').imagesLoaded ->
//     $('#users').masonry({
//       itemSelector: '.box',
//       isFitWidth: true
//     });