class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :author_id, null: false
      t.string :title

      t.timestamps
    end

    add_index :polls, :author_id
  end
end
