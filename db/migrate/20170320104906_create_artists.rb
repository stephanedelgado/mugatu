class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone_number
      t.string :address
      t.float :height
      t.float :shoe_size
      t.integer :daily_rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
