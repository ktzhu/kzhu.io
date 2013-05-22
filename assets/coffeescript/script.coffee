$ ->
  $('#nav-about').click ->
    if $(@).hasClass('expanded')
      $('#about').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#about').slideDown(1000)
      $(@).find('p').text('–')

  $('#nav-work').click ->
    if $(@).hasClass('expanded')
      $('#work').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#work').slideDown(1000)
      $(@).find('p').text('–')

  $('#nav-contact').click ->
    if $(@).hasClass('expanded')
      $('#contact').slideUp(1000)
      $(@).find('p').text('+')
      $(@).removeClass 'expanded'

    else
      $(@).addClass('expanded')
      $('#contact').slideDown(1000)
      $(@).find('p').text('–')
