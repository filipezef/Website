class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 6, maximum: 100 }
  validates :description, presence: true,
                          uniqueness: { case_sensitive: false },
                          length: { minimum: 20, maximum: 600 }
end
