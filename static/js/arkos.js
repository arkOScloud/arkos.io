var stuff = {}

stuff.list = [
	'<i class="fa fa-envelope"></i> email',
	'<i class="fa fa-edit"></i> blog',
	'<i class="fa fa-photo"></i> photos',
	'<i class="fa fa-calendar"></i> calendars',
	'<i class="fa fa-music"></i> music',
	'<i class="fa fa-group"></i> contacts',
	'<i class="fa fa-comments"></i> IM accounts',
	'<i class="fa fa-files-o"></i> documents',
	'<i class="fa fa-globe"></i> websites',
	'<i class="fa fa-align-left"></i> wiki'
]

stuff.counter = 0

stuff.rotate = function() {
    if (stuff.counter > stuff.list.length - 1) {
		stuff.counter = 0
	}
	$('.stuff-text').fadeOut(function() {
		$(this).html(stuff.list[stuff.counter++])
		$(this).fadeIn()
	})
}

stuff.interval = setInterval(function() {
	stuff.rotate()
}, 3000)
