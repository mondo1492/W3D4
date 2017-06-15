class User < ApplicationRecord
  validate :not_duplicate_response

  def not_duplicate_response

  end

  has_many :authored_polls,
    foreign_key: :author_id,
    class_name: :Poll

  has_many :responses,
    foreign_key: :user_id,
    class_name: :Response
end
