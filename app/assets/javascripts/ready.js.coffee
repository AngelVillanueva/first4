$(document).ready -> 

  # cookie policy check
  checkdCookiesPolicyCookie();

  # set cookie policy if a non special link is clicked and hide the warning div
  $( document ).on 'click', 'a:not(.nocookie), input[type="submit"]', ->
    setCookiePolicyOnAction("click")

  # set cookie policy if scroll and hide the warning div unless allowed page
  $( window ).scroll ->
    unless $('#cookie_allowed_page').length
      setCookiePolicyOnAction("scroll")

  # close cookie warning on close button click
  $('#close_cookie_warning').click ->
    setCookiePolicyOnAction("click")
    $('#d-policy-disclaimer').hide()
    return false