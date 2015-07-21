# Router.plugin 'dataNotFound', 
#   notFoundTemplate: 'notFound'

Router.configure 
  layoutTemplate: 'layout'
    #footer: to: 'footer'
  #progressDelay : 100
  #loadingTemplate: 'loading'
  #notFoundTemplate: 'notFound'
  # waitOn: ->
  #   if Meteor.user()?
  #     [
  #       #Meteor.subscribe 'notifications'
  #       #Meteor.subscribe 'myFamilies'
  #     ]

# all the filters for the router have been put into the file client/routes/routeFilter.coffee

#Router.onBeforeAction 'loading'

Router.map ->
  # @route 'fullPageAtForm',
  #   path: '/'

  @route 'dashboard',
    path: '/dashboard'

  @route 'hello',
    path: '/hello'

