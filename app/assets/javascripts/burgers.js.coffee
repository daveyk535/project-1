# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	burgers = $('#burger_burger_name').html()
	# console.log("Dave")
	# console.log(burgers)
	$('#burger_restaurant_id').change ->
		restaurant = $('#burger_restaurant_id :selected').text()
		options = $(burgers).filter("optgroup[label='#{restaurant}']").html()
		if options
			$('#burger_burger_name').html(options)
		else
			$('#burger_burger_name').empty()