class Category < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :articles, through: :article_categories
  validates :title, presence: true
  validates :content, presence: true
  validates :articles, presence: true
end
