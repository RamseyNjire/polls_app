class Response < ApplicationRecord
    validate :respondent_already_answered
    belongs_to(
        :respondent,
        class_name: 'User',
        foreign_key: :respondent_id,
        primary_key: :id
    )

    belongs_to(
        :answer_choice,
        class_name: 'Answerchoice',
        foreign_key: :answer_choice_id,
        primary_key: :id
    )

    has_one(
        :question,
        through: :answer_choice,
        source: :question
    )

    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end

    def respondent_already_answered?
        if sibling_responses.any?{ |response| response.respondent_id == self.respondent_id }
            errors[:response] << 'already submitted for this question'
        else
            return
        end
    end
end