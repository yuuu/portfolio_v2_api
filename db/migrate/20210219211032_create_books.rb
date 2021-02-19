class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :link
      t.string :key

      t.timestamps
    end
  end
end
