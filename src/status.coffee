$ = jQuery
$.status =

  options:
    fadeTime: 5000

  init: =>
    @el = $('<div class="status"/>')
      .appendTo('body')
    @message = $('<div class="message"/>')
    .appendTo(@el)

  html: (message, options) =>
    options = $.extend {}, { error: false,  progress: false }, options
    clearTimeout @timer
    @el.toggleClass 'error', options.error==true
    @el.toggleClass 'progress', options.progress==true
    @el.show()
    @message.html message
    delay $.status.options.fadeTime, -> @el.fadeOut()

  empty: =>
    clearTimeout @timer
    @el.fadeOut()

$.status.init()

delay = (millis, func) -> setTimeout func, millis

