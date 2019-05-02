class CreateBumblefooks < ActiveRecord::Migration[5.2]
  def change
    create_table :bumblefooks do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :image_url

      t.timestamps
    end
  end
end
