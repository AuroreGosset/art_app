class AddCategoryToArtwork < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :category, :string
  end
end
