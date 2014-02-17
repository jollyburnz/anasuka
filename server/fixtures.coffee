if Questions.find().count() is 0

  Questions.insert
    qid: 1
    question: "How old are you?"
    answers: [
      answer: "18-25"
      point: 1
    ,
      answer: "26-35"
      point: 2
    ,
      answer: "36-45"
      point: 3
    ,
      answer: "45>"
      point: 4
    ]

  Questions.insert
    qid: 2
    question: "What color is the sky?"
    answers: [
      answer: "blue"
      point: 1
    ,
      answer: "green"
      point: 0
    ,
      answer: "red"
      point: 0
    ,
      answer: "orange"
      point: 0
    ]

  Questions.insert
    qid: 3
    question: "What day of the week is it today?"
    answers: [
      answer: "Monday"
      point: 1
    ,
      answer: "Tuesday"
      point: 0
    ,
      answer: "Wednesday"
      point: 0
    ,
      answer: "Thursday"
      point: 0
    ]

  Questions.insert
    qid: 4
    question: "What is your gender?"
    answers: [
      answer: "male"
      point: 2
    ,
      answer: "female"
      point: 2
    ]

  Questions.insert
    qid: 5
    question: "How do you feel?"
    answers: [
      answer: "sad"
      point: 1
    ,
      answer: "meh"
      point: 2
    ,
      answer: "happy"
      point: 3
    ,
      answer: "estatic"
      point: 4
    ]

  Questions.insert
    qid: 6
    question: "When did bitcoin started?"
    answers: [
      answer: "2008"
      point: 0
    ,
      answer: "2009"
      point: 1
    ,
      answer: "2010"
      point: 0
    ,
      answer: "2011"
      point: 0
    ]

  Questions.insert
    qid: 7
    question: "What color is grass?"
    answers: [
      answer: "blue"
      point: 0
    ,
      answer: "green"
      point: 1
    ,
      answer: "red"
      point: 0
    ,
      answer: "orange"
      point: 0
    ]

  Questions.insert
    qid: 8
    question: "What color is the dirt?"
    answers: [
      answer: "blue"
      point: 0
    ,
      answer: "green"
      point: 0
    ,
      answer: "brown"
      point: 1
    ,
      answer: "orange"
      point: 0
    ]
    