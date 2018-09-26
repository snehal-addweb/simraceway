jQuery.noConflict();

(function($) {

$(document).ready(function() {
    $('#bootstrapModalFullCalendar').fullCalendar({
      header: {
      left: '',
      center: 'prev title next',
      right: ''
      },
      eventLimit: 3, // for all non-agenda views
      views: {
      agenda: {
      eventLimit: true, // adjust to 6 only for agendaWeek/agendaDay
      }
      },

      events:
      [
      ]
    })
    $('#bootstrapModalFullCalendar').fullCalendar({
      header: {
      left: '',
      center: 'prev title next',
      right: ''
      },
})

})

}(jQuery));
