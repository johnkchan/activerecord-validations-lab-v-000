class Author < ActiveRecord::Base
  validates :name, length: { minimum: 2 }
  validates :name, presence: true
  validates :name, uniqueness: true

end
