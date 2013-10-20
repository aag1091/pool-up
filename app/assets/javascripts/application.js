// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require jquery.tokeninput
//= require_tree .

$(function(){ $(document).foundation(); });

$(function () {
  $('#start_point').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#end_point').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });

  $('#driver_journey_source_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#driver_journey_destination_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  
  $('#passenger_journey_source_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#passenger_journey_destination_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  
  $('#driver_journey_journey_stops_attributes_0_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#driver_journey_journey_stops_attributes_1_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#driver_journey_journey_stops_attributes_2_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  
  $('#driver_journey_journey_stops_attributes_3_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#driver_journey_journey_stops_attributes_4_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
  $('#driver_journey_journey_stops_attributes_5_stop_id').tokenInput('/stops.json', { crossDomain: false, tokenLimit: 1 });
});
