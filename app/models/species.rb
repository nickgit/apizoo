class Species < ActiveRecord::Base
  attr_accessible :name, :description, :photo, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  has_many :animals
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
