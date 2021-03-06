class CreateSpecies < ActiveRecord::Migration
  def self.up
    create_table :species do |t|
      t.string :name
      t.text :description
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size
      t.string :photo_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :species
  end
end
