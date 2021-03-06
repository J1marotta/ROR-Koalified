require 'cloudinary'
require 'shrine/storage/cloudinary'

Cloudinary.config(
  cloud_name: 'jamescloud',
  api_key:    ENV['CLOUDINARY_API'],
  api_secret: ENV['CLOUDINARY_SECRET']
)

Shrine.storages = {
  cache: Shrine::Storage::Cloudinary.new(prefix: 'cache'), # for direct uploads
  store: Shrine::Storage::Cloudinary.new(prefix: 'store')
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for forms
Shrine.plugin :rack_file # for non-Rails apps
