class CreateAnswerchoicesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :answerchoices_tables do |t|
      t.text :text
      t.integer :question_id
      t.index :question_id, unique: true

      t.timestamps
    end
  end
end
