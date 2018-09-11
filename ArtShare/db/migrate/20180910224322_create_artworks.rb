class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, presence: true
      t.string :image_url, presence: true
      t.integer :artist_id, presence: true
    
    end
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
