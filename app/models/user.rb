class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :comments
  has_many :posts

  has_secure_password

  validates :password, format: { with: /\A(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}\z/ , message: "At least one upper case, at least one lower case, at least one digit, at least one special character, minimum length of 8"}
  validates :username, presence: true, uniqueness: true

def owns?(post)
  post.user == self
end

end
