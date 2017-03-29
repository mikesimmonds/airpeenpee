//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$( document ).ready(function(){

  // Pee and Poo buttons

  $('#pee-btn, #poo-btn').click(function(){
    $('.banner-content > h1, p, #pee-btn, #poo-btn, #filter-btn').fadeOut(500, function(){
      $('#toilet-list').fadeIn(500).removeClass('hidden');
    });
  });




});
