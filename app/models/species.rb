class Species < ActiveRecord::Base
  attr_accessible :name, :description, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
end