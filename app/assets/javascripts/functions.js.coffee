## SHARED JS FUNCTIONS

# check if CookiePolicy cookie already exists to show or not the warning
@checkdCookiesPolicyCookie = ->
  dcplyName = "DCKPLCY"
  unless existsCookie(dcplyName)
    $("#d-policy-disclaimer").show()
  else
    $("#d-policy-disclaimer").hide()
    injectAnalytics()

# set policy cookie if not set
@setCookiePolicyOnAction = (the_action) ->
  dcplyName = "DCKPLCY"
  dcplyExpireDate = new Date()
  expireMonths = 1
  action = the_action
  dcplyExpireDate.setMonth dcplyExpireDate.getMonth() + expireMonths
  setCookieValue dcplyName, action, dcplyExpireDate
  $( '#d-policy-disclaimer' ).hide()
  injectAnalytics() unless analytics_loaded



# inject google analytics snippet
@injectAnalytics = ->
  unless analytics_loaded
    ga = document.createElement 'script'
    ga.type = 'text/javascript'
    ga.async = true
   
    proto = document.location.protocol
    proto = if (proto is 'https:') then 'https://ssl' else 'http://www'
    ga.src = "#{proto}.google-analytics.com/ga.js"
    
    s = document.getElementsByTagName 'script'
    $(ga).insertBefore(s[0])
    root.analytics_loaded = true # so there please do not load it again