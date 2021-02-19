class CreateApps < ActiveRecord::Migration[6.1]
  def change
    create_table :apps do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :image
      t.string :link
      t.string :key

      t.timestamps
    end
  end
end
