# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	# $('#burger_burger_name').hide()
	burgers = $('#burger_burger_name').html()
	$('#burger_restaurant_id').change ->
		restaurant = $('#burger_restaurant_id :selected').text()
		options = $(burgers).filter("optgroup[label='#{restaurant}']").html()
		if options
			$('#burger_burger_name').html(options)
			# $('#burger_burger_name').show()
		else
			$('#burger_burger_name').empty()
			# $('#burger_burger_name').hide()