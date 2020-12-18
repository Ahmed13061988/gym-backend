class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.string :address

      t.timestamps
    end
  end
end
