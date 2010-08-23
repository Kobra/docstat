// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {

  /* Google analytics template */
  var _gaq = [['_setAccount', 'UA-XXXXX-X'], ['_trackPageview']];
  (function(d, t) {
    var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
    g.async = true; g.src = '//www.google-analytics.com/ga.js'; s.parentNode.insertBefore(g, s);
  })(document, 'script');

  $('#document_in_date').DatePicker({
	  format:'m/d/Y',
	  date: $('#document_in_date').val(),
	  current: $('#document_in_date').val(),
	  starts: 1,
	  position: 'r',
	  onBeforeShow: function(){
		  $('#document_in_date').DatePickerSetDate($('#document_in_date').val(), true);
	  },
	  onChange: function(formated, dates){
		  $('#document_in_date').val(formated);
		  if ($('#closeOnSelect input').attr('checked')) {
			  $('#document_in_date').DatePickerHide();
		  }
	  }
  });
});
