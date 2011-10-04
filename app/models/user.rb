class User
  include Mongoid::Document
  include  ActiveModel::SecurePassword
  has_secure_password
  
  field :username, type: String
  field :password_digest, type: String
  
  validates :password, presence: true
  
  def password_confirmation
    password
  end
end