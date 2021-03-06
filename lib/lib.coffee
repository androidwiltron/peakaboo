@getUserFromToken = (login_token) ->
  hashedToken = ''
  if login_token?
    hashedToken = Accounts._hashLoginToken login_token

  Meteor.users.findOne
    'services.resume.loginTokens.hashedToken': hashedToken

@uuid = ->
  "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace /[xy]/g, (c) ->
    r = Math.random() * 16 | 0
    v = (if c is "x" then r else (r & 0x3 | 0x8))
    v.toString 16
