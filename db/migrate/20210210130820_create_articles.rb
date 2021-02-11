class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.datetime :published_at
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
