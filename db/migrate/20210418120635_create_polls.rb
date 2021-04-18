class CreatePolls < ActiveRecord::Migration[6.1]
  def change
    create_table :polls do |t|
      t.string :title
      t.integer :user_id

      t.index :user_id, unique: true

      t.timestamps
    end
  end
end
