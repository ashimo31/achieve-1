ready = ->
$ ->
    $(window).scroll ->
        element = $('#page-top-btn')
        visible = element.is(':visible')
        height = $(window).scrollTop()
        if height > 400
            element.fadeIn() if !visible
        else
            element.fadeOut()
    $(document).on 'click', '#move-page-top', ->
        $('html,body').animate({ scrollTop: 0}, '1000')

$(document).ready(ready)
$(document).on('page:load', ready)