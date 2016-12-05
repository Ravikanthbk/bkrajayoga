$(document).ready(function() {
  url_check('#admin_mini_carousel_is_url')
  $('#admin_mini_carousel_is_url').click(function() {
    url_check(this)
  });
});

function url_check(id){
if($(id).prop( "checked") == true ) {
  $(".url").show();
}else{
	$("#admin_mini_carousel_url").val(null);
	$(".url").hide();
} 
};