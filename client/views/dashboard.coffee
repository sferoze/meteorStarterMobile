# Template.dashboard.events
#   'click #logout': (e, t) ->
#     Meteor.logout()
#     #Router.go 'login'

Template.dashboard.rendered = ->
  $('#logout').unbind()
  $('#logout').click ->
    AccountsTemplates.logout()