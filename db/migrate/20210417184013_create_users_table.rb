class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users_tables do |t|
      t.string :username, unique: true, null: false

      t.timestamps
    end
  end
end
