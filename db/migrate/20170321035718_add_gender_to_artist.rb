class AddGenderToArtist < ActiveRecord::Migration[5.0]
  def change
    add_column :artists, :gender, :string
  end
end
