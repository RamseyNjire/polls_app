# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{ username: 'Ramsey' }, {username: 'Brian'}, {username: 'Gideon'}])
first_poll = Poll.create(title: 'First poll', user_id: users.first.id)

first_question = Question.create(text: 'Do you lift?', poll_id: first_poll.id)

first_question_answer_a = Answerchoice.create(text: 'Yes', question_id: first_question.id)
first_question_answer_b = Answerchoice.create(text: 'No', question_id: first_question.id)
first_question_answer_c = Answerchoice.create(text: 'Maybe', question_id: first_question.id)


first_reponse = Response.create(answer_choice_id: first_question_answer_a.id, respondent_id: users.second.id)

second_response = Response.create(answer_choice_id: first_question_answer_b.id, respondent_id: users.third.id)