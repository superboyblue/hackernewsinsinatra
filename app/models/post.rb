class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :votes
  has_many :comments
  validates :link, format: { with: /\A(http(?:s)?\:\/\/[a-zA-Z0-9]+(?:(?:\.|\-)[a-zA-Z0-9]+)+(?:\:\d+)?(?:\/[\w\-]+)*(?:\/?|\/\w+\.[a-zA-Z]{2,4}(?:\?[\w]+\=[\w\-]+)?)?(?:\&[\w]+\=[\w\-]+)*)\z/ }, presence: true
  validates :title, presence: true
end
