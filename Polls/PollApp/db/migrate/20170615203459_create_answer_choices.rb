class CreateAnswerChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false
      t.text :answer_text

      t.timestamps
    end
  end
end
