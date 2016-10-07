class Question < ApplicationRecord
    belongs_to :user
    has_one :answer

    def printed_answer
        self.answer.content
    end

    def question_authorname
        self.user.username
    end

    def answer_author
        self.answer.user
    end

    def question.answer_authorname
        self.answer.user.username
    end

end