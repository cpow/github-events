class CreateEventSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :event_searches do |t|
      t.string :repo_name, null: false
      t.string :user_name, null: false
      t.string :event_type, null: false

      t.timestamps
    end
  end
end
