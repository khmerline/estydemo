class Listing < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "200x200", thumb: "100x100" }, default_url: "default.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end