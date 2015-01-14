class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :title, type: String
  field :content, type: String
  mount_uploader :image, AvatarUploader
  
  belongs_to :user, dependent: :nullify

  validates :title, presence: true
  validates :title, length: { minimum: 3 }
  validates :content, presence: true
  validates :content, length: { minimum: 5 }
  
end
