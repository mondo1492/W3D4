class Response < ApplicationRecord
  validate :respondent_already_answered?
  validate :own_question?

  belongs_to :answer_choice,
    foreign_key: :answer_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question


  def sibling_responses
    question.responses
      .where.not(id: self.id)
  end

  def respondent_already_answered?
    if sibling_responses.exists?(self.user_id)
      errors[:base] << "This respondent already answered ..."
    end
  end

  def own_question?
    errors[:base] << "Author can't answer own question" if user_id == question.poll.author_id.to_i
  end
end
