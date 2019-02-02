class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :check_clickbait

  def check_clickbait
    phrases = ["Won't Believe", "Secret", "Top[Number]", "Guess"]

  end

end
