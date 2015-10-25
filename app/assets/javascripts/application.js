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
//= require ckeditor/init

//= require moment
//= require bootstrap-datetimepicker
//= require pickers
//= require fullcalendar

$(document).ready(function() {
//  return $('#calendar').fullCalendar();

$(function() {
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		defaultDate: '2015-10-12',
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		events: [
			{
				title: 'All Day Event',
				start: '2015-10-01'
			},
			{
				title: 'Long Event',
				start: '2015-10-07',
				end: '2015-10-10'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: '2015-10-09T16:00:00'
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: '2015-10-16T16:00:00'
			},
			{
				title: 'Conference',
				start: '2015-10-11',
				end: '2015-10-13'
			},
			{
				title: 'Meeting',
				start: '2015-10-12T10:30:00',
				end: '2015-10-12T12:30:00'
			},
			{
				title: 'Lunch',
				start: '2015-02-12T12:00:00'
			},
			{
				title: 'Meeting',
				start: '2015-10-12T14:30:00'
			},
			{
				title: 'Happy Hour',
				start: '2015-10-12T17:30:00'
			},
			{
				title: 'Dinner',
				start: '2015-10-12T20:00:00'
			},
			{
				title: 'Birthday Party',
				start: '2015-10-13T07:00:00'
			},
			{
				title: 'Click for Google',
				url: 'http://google.com/',
				start: '2015-10-28'
			}
		]
	});
});


});


