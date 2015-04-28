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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(function(){
  $('.rating_star').click(function(){
    var star = this;
    var property_id= $(this).attr('data-property-id');
    var stars = $(this).attr('data-stars');
    console.log(this);
    console.log(stars);
    console.log(property_id);
    for(i=1; i <= 5; i++){
      if(i <= stars){
        $('#' + property_id + '_' + i).addClass('on');
      }else{
        $('#' + property_id + '_' + i).removeClass('on');
      }
    }
  });
});