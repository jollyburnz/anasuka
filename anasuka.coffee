if Meteor.isClient
  Meteor.startup ->
    window.answers = []
    Session.set('finalyet', false)

  Template.deck.questions = ->
    Questions.find()

  Template.deck.finalyet = ->
    Session.equals 'finalyet', true

  Template.deck.final = ->
    Session.get 'finalanswers'
    #window.answers

  Template.deck.test = (percent) ->
    amount = Session.get 'amount'
    invest = amount * parseFloat(percent)
    invest.toFixed(2)

  Template.deck.rendered = ->
    console.log 'deck rendered'
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

      if answers.length is 6
        Session.set 'finalyet', true

      $.deck('next')

    'click .finish': (e, t) ->
      #console.log t.find('#amount').value
      Session.set 'amount', t.find('#amount').value
      $.deck('next')

  Template.answerItem.events
    'change input[type=radio]': (e, t) ->
      console.log @
      Session.set 'answer', @

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup