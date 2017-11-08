class Profile < ApplicationRecord
 belongs_to :user
  include ImageUploader::Attachment.new(:avatar) # adds an `image` virtual attribute
end
