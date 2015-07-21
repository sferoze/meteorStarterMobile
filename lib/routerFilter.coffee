requireLogin = () ->
  if not Meteor.loggingIn() and not Meteor.user()
    Router.go 'login'
  else
    @next()

loggedInUserGoToDashboard = () ->
  if Meteor.user()?
    Router.go 'dashboard'
  else
    @next()


# Accounts.onLogin () ->
#   if Meteor.isClient
#     noFamilyGoToSetup()

# allPublicPages = ['signup', 'forgotPassword', 'login']
# noPointIfLoggedInPages = ['landingPage', 'signup', 'login']

# Router.onBeforeAction requireLogin,
#   only: ['dashboard']

Router.plugin 'ensureSignedIn',
  only: ['dashboard']

# Router.plugin 'ensureSignedIn',
#   except: ['home', 'atSignIn', 'atSignUp', 'atForgotPassword']


# Router.onBeforeAction loggedInUserGoToDashboard,
#   except: ['dashboard']
# Router.onRun requireLogin, 
#   except: allPublicPages

# Router.onRerun requireLogin, 
#   except: allPublicPages

# Router.onRun loggedInUserGoToDashboard, 
#   only: noPointIfLoggedInPages

# Router.onRerun loggedInUserGoToDashboard, 
#   only: noPointIfLoggedInPages