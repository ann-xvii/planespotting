class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :content, type: String
  mount_uploader :image, AvatarUploader
  
  belongs_to :user
  
end
