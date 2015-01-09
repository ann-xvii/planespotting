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



/**
 * Cache
 */
// var $content = $('header .content')
//   , $blur    = $('header .overlay')
//   , wHeight  = $(window).height();

// $(window).on('resize', function(){
//   wHeight = $(window).height();
// });

// /**
//  * requestAnimationFrame Shim 
//  */
// window.requestAnimFrame = (function()
// {
//   return  window.requestAnimationFrame       ||
//           window.webkitRequestAnimationFrame ||
//           window.mozRequestAnimationFrame    ||
//           function( callback ){
//             window.setTimeout(callback, 1000 / 60);
//           };
// })();

// /**
//  * Scroller
//  */
// function Scroller()
// {
//   this.latestKnownScrollY = 0;
//   this.ticking            = false;
// }

// Scroller.prototype = {
//   /**
//    * Initialize
//    */
//   init: function() {
//     window.addEventListener('scroll', this.onScroll.bind(this), false);
//   },

//   /**
//    * Capture Scroll
//    */
//   onScroll: function() {
//     this.latestKnownScrollY = window.scrollY;
//     this.requestTick();
//   },

//   /**
//    * Request a Tick
//    */
//   requestTick: function() {
//     if( !this.ticking ) {
//       window.requestAnimFrame(this.update.bind(this));
//     }
//     this.ticking = true;
//   },

//   /**
//    * Update.
//    */
//   update: function() {
//     var currentScrollY = this.latestKnownScrollY;
//     this.ticking       = false;
    
//     /**
//      * Do The Dirty Work Here
//      */
//     var slowScroll = currentScrollY / 4
//       , blurScroll = currentScrollY * 2;
    
//     $content.css({
//       'transform'         : 'translateY(-' + slowScroll + 'px)',
//       '-moz-transform'    : 'translateY(-' + slowScroll + 'px)',
//       '-webkit-transform' : 'translateY(-' + slowScroll + 'px)'
//     });
    
//     $blur.css({
//       'opacity' : blurScroll / wHeight
//     });
//   }
// };

// /**
//  * Attach!
//  */
// var scroller = new Scroller();  
// scroller.init();











function fader() {
var r = $('.blurred'),
wh = $(window).height(),
dt = $(document).scrollTop(),
elView, opacity;

// Loop elements with class "blurred"
r.each(function() {
elView = wh - ($(this).offset().top - dt + 200);
if (elView > 0) { // Top of DIV above bottom of window.
opacity = 1 / (wh + $(this).height()) * elView * 2
if (opacity < 1) // Bottom of DIV below top of window.
$(this).css('opacity', opacity);
}
});
}

$(document).bind('scroll', fader);














