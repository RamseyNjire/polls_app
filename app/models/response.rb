class Response < ApplicationRecord
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
end