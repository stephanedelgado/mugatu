//= require jquery
//= require jquery-fileupload/basic
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require moment
//= require bootstrap-datepicker
//= require bootstrap-datetimepicker
//= require_tree .


$('.input-daterange').datepicker({
});

$(function(){
  $(".tab").on("click", function(e){
    // Change active tab
    $(".tab").removeClass('active');
    $(this).addClass('active');
    // Hide all tab-content (use class="hidden")
    $(".tab-content").addClass('hidden');
    // Show target tab-content (use class="hidden")
    $($(this).data('target')).removeClass('hidden');
  });
});

$(function () {
    $('.form_datetime').datetimepicker({ format: 'YYYY-MM-DD HH:mm' });
});
