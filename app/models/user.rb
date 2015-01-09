class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String

  mount_uploader :image, AvatarUploader
  field :remove_image
  
  has_many :articles
  attr_reader :password

  def password=(unencrypted_password)
  	self.password_digest = BCrypt::Password.create(unencrypted_password)
  end

  def authenticate(unencrypted_password)
  	if BCrypt::Password.new(self.password_digest) == unencrypted_password
  		return self 
  	else
  		return false
  	end
  end

end
