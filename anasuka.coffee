if Meteor.isClient
  Meteor.startup ->
    window.answers = []

  Template.deck.questions = ->
    Questions.find()

  Template.deck.final = ->
    Session.get 'finalanswers'

  Template.deck.rendered = ->
    
    $.extend true, $.deck.defaults,
      keys:
        next: ''
        previous: ''

    $.deck('.slide')

  Template.deck.events
    'click .next': (e, t) ->
      console.log 'deckkkkkk!!!'
      answers.push Session.get 'answer'
      Session.set 'finalanswers', answers
      $.deck('next')

  Template.answerItem.events
    'change input[type=radio]': (e, t) ->
      console.log @
      Session.set 'answer', @

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup