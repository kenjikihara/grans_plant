class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :grans_name
      t.text :grans_image
      t.string :plants_name
      t.text :plants_image
      t.boolean :transfer_complete
      
      t.timestamps
    end
  end
end
