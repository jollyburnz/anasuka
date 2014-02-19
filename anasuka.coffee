if Meteor.isClient
  Meteor.startup ->
    window.answers = []
    Session.set('finalyet', false)

    $(document).bind "deck.beforeInit", (event) ->
      console.log 'before init'
      event.lockInit() # halts deck.init event
      window.setTimeout (->
        event.releaseInit() # deck.init will now fire 2 seconds later
        return
      ), 1500
      return


  Template.deck.questions = ->
    Questions.find()

  Template.deck.notfinalyet = ->
    Session.equals 'finalyet', false

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

    if Session.equals 'finalyet', false
      # $.deck [
      #   "#question_1"
      #   "#question_2"
      #   "#question_3"
      #   "#question_4"
      #   "#question_5"
      #   "#question_6"
      #   "#investslide"
      # ]
      $.deck(".slide")

  Template.deck.events
    'click .next': (e, t) ->
      console.log 'deckkkkkk!!!'
      answers.push Session.get 'answer'
      Session.set 'finalanswers', answers


      $.deck('next')

    'click .finish': (e, t) ->
      #console.log t.find('#amount').value
      Session.set 'amount', t.find('#amount').value
      Session.set 'finalyet', true
      $.deck('next')

  Template.answerItem.events
    'change input[type=radio]': (e, t) ->
      console.log @
      Session.set 'answer', @

  Template.finalslide.finalyet = ->
    Session.equals 'finalyet', true

  Template.finalslide.final = ->
    Session.get 'finalanswers'
    #window.answers

  Template.finalslide.rendered = ->
    console.log 'finalslide'
    $('#finalslide').fadeIn('slow')

if Meteor.isServer
  Meteor.startup ->


# code to run on server at startup