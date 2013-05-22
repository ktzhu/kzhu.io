$ ->
  $('#nav-about').click ->
    if $(@).hasClass('expanded')
      $('#about').hide()
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#about').show()
      $(@).find('p').text('–')

  $('#nav-work').click ->
    if $(@).hasClass('expanded')
      $('#work').hide()
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#work').show()
      $(@).find('p').text('–')

  $('#nav-contact').click ->
    if $(@).hasClass('expanded')
      $('#contact').hide()
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#contact').show()
      $(@).find('p').text('–')
