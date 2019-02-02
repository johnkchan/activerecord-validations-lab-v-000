class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :check_clickbait

  def check_clickbait
    phrases = ["Won't Believe", "Secret", "Top", "Guess"]
    phrases.each do |phrase|
      if title.include?(phrase)
        errors.add(:title, "is not sufficiently clickbait-y")
      end
    end
  end

end
