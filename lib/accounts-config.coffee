AccountsTemplates.configureRoute 'changePwd'
AccountsTemplates.configureRoute 'enrollAccount'
# AccountsTemplates.configureRoute 'forgotPwd'
AccountsTemplates.configureRoute 'resetPwd'
# AccountsTemplates.configureRoute 'signIn'
# AccountsTemplates.configureRoute 'signUp'
AccountsTemplates.configureRoute 'verifyEmail'

AccountsTemplates.configureRoute 'ensureSignedIn',
    template: 'login',
    layoutTemplate: 'layoutLoggedOut'

AccountsTemplates.configureRoute 'signIn',
    name: 'signin',
    path: '/',
    template: 'login',
    layoutTemplate: 'layoutLoggedOut',
    redirect: '/dashboard'

AccountsTemplates.configureRoute 'signUp',
    name: 'signup',
    path: '/signup',
    template: 'signup',
    layoutTemplate: 'layoutLoggedOut',
    redirect: '/dashboard'

AccountsTemplates.configureRoute 'forgotPwd',
    name: 'forgotpassword',
    path: '/forgot-password',
    template: 'forgotpassword',
    layoutTemplate: 'layoutLoggedOut',
    redirect: '/'

AccountsTemplates.configure
  confirmPassword: true
  enablePasswordChange: true
  forbidClientAccountCreation: false
  #overrideLoginErrors: true
  #sendVerificationEmail: false
  lowercaseUsername: false
  showAddRemoveServices: false
  showForgotPasswordLink: true
  showLabels: true
  showPlaceholders: true
  showResendVerificationEmailLink: false
  continuousValidation: false
  negativeFeedback: false
  negativeValidation: false
  positiveValidation: false
  positiveFeedback: false
  showValidating: true
  privacyUrl: 'privacy'
  termsUrl: 'terms-of-use'
  homeRoutePath: '/dashboard'
  redirectTimeout: 4000
  onLogoutHook: ->
    Meteor.defer ->
      Router.go '/'
  #onSubmitHook: mySubmitFunc
  #preSignUpHook: myPreSubmitFunc
  texts:
    button: signUp: 'Register Now!'
    socialSignUp: 'Register'
    #socialIcons: 'google': 'fa fa-rocket'
    title: 
      forgotPwd: 'Recover Your Password'
      changePwd: 'Change Password'
      enrollAccount: 'Enroll Account'
      resetPwd: 'Reset Password'
      signIn: 'Sign In'
      signUp: 'Sign Up'
      verifyEmail: 'Verify Email'