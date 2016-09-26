(function() {

  // $(function() {
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
  // });
    $('#page-refresh').click(function() {
      location.reload(true);
    });

})()