class CreatePollsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :polls_tables do |t|
      t.string :title
      t.integer :user_id

      t.index :user_id, unique: true

      t.timestamps
    end
  end
end
