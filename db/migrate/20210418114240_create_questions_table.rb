class CreateQuestionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :questions_tables do |t|
      t.text :text
      t.integer :poll_id
      t.index :poll_id, unique: true

      t.timestamps
    end
  end
end
