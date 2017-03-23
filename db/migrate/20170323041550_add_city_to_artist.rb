class AddCityToArtist < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :city, :string
  end
end
