class Question < ApplicationRecord
    validates :text, presence: true
    belongs_to(
        :poll,
        class_name: 'Poll',
        foreign_key: :poll_id,
        primary_key: :id
    )

    has_many(
        :answer_choices,
        class_name: 'Answerchoice',
        foreign_key: :question_id,
        primary_key: :id
    )

    has_many(
        :responses,
        through: :answer_choices,
        source: :responses
    )

    def results
        # results_hash = {}
        # Below is the code that would trigger an N+1 query

        # self.answer_choices.each do |answer_choice|
        #     results_hash[answer_choice.text] = answer_choice.responses.count
        # end

        # Below is the code that would solve the N+1 problem by prefetching responses with answer choices

        # answer_choices = self.answer_choices.includes(:responses)
        # answer_choices.each do |answer_choice|
        #     results_hash[answer_choice.text] = answer_choice.responses.length
        # end
        answer_choices = self.answer_choices
        .select("answerchoices.text, COUNT(responses.id) AS response_count")
        .left_outer_joins(:responses).group("answerchoices.id")

        answer_choices.inject({}) do |results_hash, answer_choice|
        results_hash[answer_choice.text] = answer_choice.response_count
        results_hash
        end
    end
end