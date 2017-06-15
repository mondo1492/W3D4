# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(user_name: "Greg")
u2 = User.create(user_name: "Aaron")

p1 = Poll.create(author_id: u1.id, title: "Poll1")
p2 = Poll.create(author_id: u2.id, title: "Poll2")

q1 = Question.create(poll_id: p1.id, question_text: "Question1 text")
q2 = Question.create(poll_id: p2.id, question_text: "Question2 text")

a1 = AnswerChoice.create(question_id: q1.id, answer_text: "Answer1 text")
a2 = AnswerChoice.create(question_id: q1.id, answer_text: "Answer2 text")
a3 = AnswerChoice.create(question_id: q2.id, answer_text: "Answer3 text")
a4 = AnswerChoice.create(question_id: q2.id, answer_text: "Answer4 text")

r1 = Response.create(user_id: u1.id, answer_id: a1.id)
r2 = Response.create(user_id: u2.id, answer_id: a3.id)
