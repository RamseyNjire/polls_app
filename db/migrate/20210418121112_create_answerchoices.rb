class CreateAnswerchoices < ActiveRecord::Migration[6.1]
  def change
    create_table :answerchoices do |t|
      t.text :text
      t.integer :question_id
      t.index :question_id, unique: true

      t.timestamps
    end
  end
end
