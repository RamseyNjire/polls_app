class DropResponsesTableTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :responses_tables
  end
end
