// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery.min
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require ckeditor/init
//= require moment
//= require fullcalendar
//= require bootstrap-datetimepicker
//= require pickers

$(document).ready(function() {
  
  //$('.carousel').carousel({
  //  interval: 10000
  //})

  $("#main-carousel").owlCarousel({
    autoWidth: true,
    touchDrag: true,
    mouseDrag: true,
    autoPlay : true,
    animateOut: 'fadeIn',
    animateIn: 'fadeOut',
    items:1,
    margin:30,
    stagePadding:30,
    smartSpeed:450  
  });  
  
  $("#owl-example").owlCarousel({
	autoPlay : 6000,
    stopOnHover : true,
    navigation:true,
    paginationSpeed : 6000,
    goToFirstSpeed : 6000,
    singleItem : true,
    autoHeight : true,
    transitionStyle:"goDown"
	
  });

  $('.user').hover(function() {
    $(this).next('.popup').show();
  }, function() {
    $(this).next('.popup').hide();
  });

  $('ul.nav li.dropdown').hover(function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
  }, function() {
    $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
  });

  if ($(".banner-header-nav").length){
    var distance = $('div').offset().top;
    $window = $(window);

    $window.scroll(function() {
      if ( $window.scrollTop() == distance ) {
        $(".banner-header-nav").removeClass("banner-header-nav-white");
        $("a.call-email-font").removeClass("call-email-font-black");
        $(".contact-info-motto").removeClass("contact-info-motto-black");
        $(".navbar-inverse").removeClass("navbar-inverse-black");
        $('.bk-sg-logo').removeClass('bk-sg-logo-red');
        $('.icon-phone').removeClass("icon-phone-black");
        $('.icon-envelope').removeClass("icon-envelope-black");
      }else{
        $(".banner-header-nav").addClass("banner-header-nav-white");
        $("a.call-email-font").addClass("call-email-font-black");
        $(".contact-info-motto").addClass("contact-info-motto-black");
        $(".navbar-inverse").addClass("navbar-inverse-black");
        $('.bk-sg-logo').addClass('bk-sg-logo-red');
        $('.icon-phone').addClass("icon-phone-black");
        $('.icon-envelope').addClass("icon-envelope-black");
      }
    });
  }


});

