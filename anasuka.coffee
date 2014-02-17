if Meteor.isClient

  Template.hello.greeting = ->
    "Welcome to anasuka."

  Template.hello.events "click input": ->
    
    # template data, if any, is available in 'this'
    console.log "You pressed the button"  if typeof console isnt "undefined"

  Template.deck.questions = ->
    Questions.find()

  Template.deck.rendered = ->
    $.extend true, $.deck.defaults,
      keys:
        next: ''
        previous: ''

    $.deck('.slide')

  Template.deck.events
    'change input[type=radio]': (e, t) ->
      console.log e
      console.log @

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup