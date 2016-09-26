$ ->
  $('#recipes').imagesLoaded ->
    $('#recipes').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
$ ->
  $('#favorited-recipes').imagesLoaded ->
    $('#favorited-recipes').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });
$ ->
  $('#users').imagesLoaded ->
    $('#users').masonry({
      itemSelector: '.box',
      isFitWidth: true
    });