class CreateCreateArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_table :create_artwork_shares do |t|

      t.timestamps
    end
  end
end
