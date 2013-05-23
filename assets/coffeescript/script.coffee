$ ->
  $('#nav-about').click ->
    if $(@).hasClass('expanded')
      $('#about').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'
      $(@).find('.text').css('color', '#444')

    else
      $(@).find('.text').css('color', '#0ac5f4')
      $(@).addClass('expanded')
      $('#about').slideDown(1000)
      $(@).find('p').text('–')

  $('#nav-work').click ->
    if $(@).hasClass('expanded')
      $('#work').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'
      $(@).find('.text').css('color', '#444')

    else
      $(@).addClass('expanded')
      $('#work').slideDown(1000)
      $(@).find('p').text('–')
      $(@).find('.text').css('color', '#ffd200')

  $('#nav-contact').click ->
    if $(@).hasClass('expanded')
      $('#contact').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'
      $(@).find('.text').css('color', '#444')

    else
      $(@).addClass('expanded')
      $('#contact').slideDown(1000)
      $(@).find('p').text('–')
      $(@).find('.text').css('color', '#ed7702')

  if window.location.hash
    $(window.location.hash).trigger('click')
