class AnswerChoice < ApplicationRecord
    belongs_to(
        :question,
        class_name: 'Question',
        foreign_key: :question_id
        primary_key: :id
    )
end