class RemoveUniquenessConstraintFromAnswerChoices < ActiveRecord::Migration[6.1]
  def change
    remove_index :answerchoices, :question_id
  end
end
