#= require jquery
#= require jquery_ujs
#= require_tree .
#= require materialize-sprockets

showMessage = (message) ->
  $('.message').text message
  $('.message-container').fadeIn(500).delay(2000).fadeOut 500

$(document).ready ->
  $('a[data-remote]').on 'ajax:success', (e, data, status, xhr) ->
    $(this).siblings('.rating').html data.rating
    if status == 'success'
      showMessage 'Voted!'
    else
      showMessage 'Error!'