class Question < ApplicationRecord
  belongs_to :user
  has_one :answer

  def printed_answer
    self.answer.content
  end
end