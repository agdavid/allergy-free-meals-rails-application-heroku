# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#recipes').imagesLoaded(function() {
    $('#recipes').masonry({
      itemSelector: '.box'
      isFitWidth: true
      });
    });
$ ->
  $('#favorited-recipes').imagesLoaded(function() {
    $('#favorited-recipes').masonry({
      itemSelector: '.box'
      isFitWidth: true
      });
    });
$ ->
  $('#users').imagesLoaded(function() {
    $('#users').masonry({
      itemSelector: '.box'
      isFitWidth: true
      });
    });