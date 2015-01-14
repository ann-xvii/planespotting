// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require d3
//= require topojson


//= require_tree .





// var $container = $('#container');
// // initialize
// $container.masonry({
//   columnWidth: 200,
//   itemSelector: '.item'
// });

// var msnry = $container.data('masonry');




// // or with jQuery
// var $container = $('#container');
// // initialize Masonry after all images have loaded  
// $container.imagesLoaded( function() {
//   $container.masonry();
// });


// or with jQuery
// initialize Masonry
var $container = $('#container').masonry();
// layout Masonry again after all images have loaded
$container.imagesLoaded( function() {
  $container.masonry();
});


