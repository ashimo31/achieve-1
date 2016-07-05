$ ->
 $(window).scroll ->
    element =$('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    if height > 400
        element.fadeIn() if !visible
    else
        element.fadeOut()
 $('#move-page-top').click ->
    $('html, body').animate({ scrollTop: 0 }, '1000')

ready = ->
  $('.selector').on 'click', '.selector2', (event) ->
  $(this).prev('input[type=hidden]').val(1)

$(document).ready(ready)
$(document).on('page:load', ready)