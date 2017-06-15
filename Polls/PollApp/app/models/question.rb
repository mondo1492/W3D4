class Question < ApplicationRecord
  has_many :answer_choices,
    foreign_key: :question_id,
    class_name: :AnswerChoice

  belongs_to :poll,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :responses,
    through: :answer_choices,
    source: :responses

  def results
    # choices = self.answer_choices.includes(:responses)
    #
    # counts = {}
    # choices.each do |choice|
    #   counts[choice.answer_text] = choice.responses.length
    # end
    #
    # counts

    a = self.answer_choices.select("answer_id, COUNT(answer_id)")
    .joins(:responses)
    .group(:answer_id)
    p a
  end
end
