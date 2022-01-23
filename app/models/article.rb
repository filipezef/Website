class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 6, maximum: 100 }
  validates :description, presence: true,
                          uniqueness: { case_sensitive: false },
                          length: { minimum: 20, maximum: 2000 }
end
