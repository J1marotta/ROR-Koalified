class Profile < ApplicationRecord
 belongs_to :user
  include ImageUploader::Attachment.new(:avatar) # adds an `image` virtual attribute
  include ImageUploader::Attachment.new(:license) # adds an `image` virtual attribute
end
