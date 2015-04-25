# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	# $('#burger_field').hide()
	# $('#ratings').hide()
	burgers = $('#review_burger_id').html()
	$('#review_restaurant_id').change ->
		restaurant = $('#review_restaurant_id :selected').text()
		options = $(burgers).filter("optgroup[label='#{restaurant}']").html()
		if options
			$('#review_burger_id').html(options)
			# $('#burger_field').show()
			# $('#ratings').show()
		else
			# $('#burger_field').empty()
			# $('#burger_field').hide()
			# $('#ratings').hide()
