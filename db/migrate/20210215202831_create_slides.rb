class CreateSlides < ActiveRecord::Migration[6.1]
  def change
    create_table :slides do |t|
      t.string :title
      t.string :body
      t.string :image
      t.datetime :published_at
      t.string :link

      t.timestamps
    end
  end
end
