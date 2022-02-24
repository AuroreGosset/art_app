class AddUsernameToArtworks < ActiveRecord::Migration[6.1]
  def change
    add_column :artworks, :username, :string
  end
end
