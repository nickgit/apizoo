class Animal < ActiveRecord::Base
  attr_accessible :name, :description, :species_id, :habitat_id, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  belongs_to :species
  belongs_to :habitat
end
