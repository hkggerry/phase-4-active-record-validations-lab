class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}

    validates :summary, length: {maximum: 250}
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    # validate :true_facts

    # def true_facts
    #     unless title.match?(["Won't Believe", "Secret", "Top [number]", "Guess"])
    #         errors.add(:title, "No Match!")
    #     end
    # end
end
