class Question < ApplicationRecord
  has_one :answer

  def printed_answer
    self.answer.content
  end
end